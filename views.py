from flask import render_template,Flask,request, redirect, url_for, session,abort,jsonify

from run import app
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re
import os
import numpy as np
from strgen import StringGenerator as SG
from flask_table import Table, Col, LinkCol
from werkzeug.utils import secure_filename
from gevent.pywsgi import WSGIServer

from operator import itemgetter
# Keras
from keras.applications.imagenet_utils import preprocess_input, decode_predictions
from keras.models import load_model
from keras.preprocessing import image

from collections import defaultdict



# Model saved with Keras model.save()
MODEL_PATH = (r"E:\FARMMETO\model\AlexNetModel.hdf5")
output_dict = {'Apple Scab': 0,
               'Apple Black rot': 1,
               'Cedar Apple rust': 2,
               'Apple Healthy': 3,
               'Blueberry healthy': 4,
               'Cherry Powdery Mildew': 5,
               'Cherry healthy': 6,
               'Corn(maize) Cercospora Grayleafspot': 7,
               'Corn(maize) Common rust': 8,
               'Corn(maize) Northern Leaf Blight': 9,
               'Corn(maize) healthy': 10,
               'Grape Black rot': 11,
               'Grape Esca (Black Measles)': 12,
               'Grape Leaf blight (Isariopsis Leaf Spot)': 13,
               'Grape healthy': 14,
               'Orange Haunglongbing (Citrus greening)': 15,
               'Peach Bacterial spot': 16,
               'Peach healthy': 17,
               'Pepper bell Bacterial spot': 18,
               'Pepper bell healthy': 19,
               'Potato Early blight': 20,
               'Potato Late blight': 21,
               'Potato healthy': 22,
               'Raspberry healthy': 23,
               'Soybean healthy': 24,
               'Squash Powdery mildew': 25,
               'Strawberry Leaf scorch': 26,
               'Strawberry healthy': 27,
               'Tomato Bacterial spot': 28,
               'Tomato Early blight': 29,
               'Tomato Late blight': 30,
               'Tomato Leaf Mold': 31,
               'Tomato Septoria leaf spot': 32,
               'Tomato Two Spotted Spider mites': 33,
               'Tomato Target Spot': 34,
               'Tomato Yellow Leaf Curl Virus': 35,
               'Tomato mosaic virus': 36,
               'Tomato healthy': 37}
output_list = list(output_dict.keys())
# Load your trained model
model = load_model(MODEL_PATH)
model._make_predict_function()          # Necessary
# print('Model loaded. Start serving...')

# You can also use pretrained model from Keras
# Check https://keras.io/applications/
#from keras.applications.resnet50 import ResNet50
#model = ResNet50(weights='imagenet')
#model.save('')

# =============================================================================
# class ReusableForm(Form):
#     username = TextField('Username', [validators.Length(min=4, max=20)])
#     #email = TextField('Email:', validators=[validators.required(), validators.Length(min=6, max=35)])
# #    password = PasswordField('password:', validators=[validators.required(), validators.Length(min=3, max=20)])
# #    confirm = PasswordField('Confirm Password')
#     print('Model loaded. Check http://127.0.0.1:5000/')
# 
# =============================================================================

def model_predict(img_path, model):
    img = image.load_img(img_path, target_size=(224, 224))

#    # Preprocessing the image
    x = image.img_to_array(img)
#    # x = np.true_divide(x, 255)
    x = np.expand_dims(x, axis=0)
#
#    # Be careful how your trained model deals with the input
#    # otherwise, it won't make correct prediction!
    x = x/255

    preds = model.predict(x)
    return preds

# Change this to your secret key (can be anything, it's for extra protection)
app.secret_key = 'qfjdhfkkruifhafk'
diseasename = 'Apple Scab'
# Enter your database connection details below
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'farmmeto'
app.config['MYSQL_PORT'] = 3308

# Intialize MySQL
mysql = MySQL(app)

@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')
@app.route('/home')
def home():
    return render_template('home.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    # Output message if something goes wrong...
    msg = ''
    # Check if "username" and "password" POST requests exist (user submitted form)
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
        # Create variables for easy access
        username = request.form['username']
        password = request.form['password']
        if username == "admin" and password == "password":
            return render_template('adminhome.html')
        else:
            # Check if account exists using MySQL
            cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
            cursor.execute('SELECT * FROM user WHERE username = %s AND password = %s', (username, password))
            # Fetch one record and return result
            account = cursor.fetchone()
            # If account exists in accounts table in out database
            if account:
                # Create session data, we can access this data in other routes
                session['loggedin'] = True
                session['id'] = account['id']
                session['username'] = account['username']
                return render_template('home.html')
            else:
                msg = 'Incorrect username/password!'
    return render_template('login.html',msg=msg)

@app.route('/signup',methods=['GET', 'POST'])
def signup():
    msg = ''
    # Check if "username", "password" and "email" POST requests exist (user submitted form)
    if request.method == 'POST':
        # Create variables for easy access
          username = request.form['username']
          password = request.form['password']
          cpassword = request.form['confirm-password']
          mobile = request.form['mobile']
          district = request.form['district']
          state = request.form['state']
          pincode = request.form['pincode']
        # Check if account exists using MySQL
          cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
          cursor.execute('SELECT * FROM user WHERE username = %s or mobile=%s', (username,mobile))
          account = cursor.fetchone()  
        # If account exists show error and validation checks
          if account:
                  msg = 'Account already exists!'
          else:
                  cursor.execute('INSERT INTO USER VALUES ( NULL,%s, %s, %s,%s,%s,%s)', (username, password, mobile,state,district,pincode))
                  mysql.connection.commit()
                  msg = 'You have successfully registered!'  
                  return redirect(url_for('login'))
    return render_template('signup.html',msg=msg)

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/techniques')
def techniques():
    return render_template('techniques.html')

@app.route('/land')
def land():
    return render_template('land.html')

@app.route('/irrigation')
def irrigation():
    return render_template('irrigation.html')

@app.route('/ferti')
def ferti():
    return render_template('ferti.html')

@app.route('/disease',methods=['GET', 'POST'])
def disease():
    
    if request.method == 'POST':
#        diseasename = request.form["result"]
#        print(diseasename)
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM disease_detection where id=2')
        data = cursor.fetchall()
        return render_template('disease.html', data=data)
    else:
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM disease_detection where id=1')
        data = cursor.fetchall()
        return render_template('disease.html')
    
# =============================================================================
#     if request.method == 'POST' and request.form['predict'] == 'predict':
#         cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
#         cursor.execute('SELECT * FROM disease_detection where id=1')
#         data = cursor.fetchall()
#         return render_template('disease.html', data=data)
#     else:
#         return render_template('disease.html')
# =============================================================================

@app.route('/factorsinput')
def factorsinput():
    return render_template('factorsinput.html')


@app.route('/cropsuggestion',methods=['GET','POST'])
def cropsuggestion():
    Vseason   = request.form.get('season')
    Vtemp     = request.form.get('temp')
    Vwater    = request.form.get('water')
    Vsoil     = request.form.get('soiltype')
    #print(str(season))
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    #cursor.execute('SELECt * FROM crops')
    #cursor.execute('SELECt * FROM crops where f_id =(select factor_id from crop_factors where fname=%s) AND f_id=(select factor_id from crop_factors where fname=%s) group by crop_name',(season,water))
    cursor.execute('SELECT * FROM crops where v_id IN (select id from variant where season=(select s_id from sub_factors where name=%s)AND temperature=(select s_id from sub_factors where name=%s) AND waterlevel=(select s_id from sub_factors where name=%s) AND soiltype=(select s_id from sub_factors where name=%s))  group by crop_name',(Vseason,Vtemp,Vwater,Vsoil))

    data = cursor.fetchall()
    print(data)
    if data:
        return render_template('cropsuggestion.html', data=data)
    else:
        msg="No crops match your requirements"
        return render_template('cropsuggestion.html',msg=msg)
    
@app.route('/cropcalendar',methods=['GET','POST'])
def cropcalendar():
    if request.form:
        tatti = [x for x in request.form.values()]
        
    
        #cursor1 = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        #name="SELECT c_id from crops"
        #cursor1.execute(name)
        #data2 = cursor1.fetchall()
        
        #ggg=list(map(itemgetter('c_id'),data2))
        dd=tatti[0]
        print(dd)
    

        #print(g)
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        c1=mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        h="SELECT * from crop_calendar where id="+str(dd)
        l="SELECT * from crops where c_id="+str(dd)+" group by c_id"
        cursor.execute(h)
        c1.execute(l)
        #cursor.execute('SELECT * from crop_calendar where id=1')
        data = cursor.fetchall()
        data1 = c1.fetchall()
        tre=[]
        for jh in range(1,11):
            tre.append(str(jh))
        print(data)
        return render_template('cropcalendar.html', data=data,data1=data1,count=tre,step="step")
    else:
        print("lost")
            #if request.method=='GET':
            #sku = request.GET.get('sku')
            #cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
            #cursor.execute('SELECT * from crop_calendar where id=(Select c_id from crops where v_id IN (select id from variant where season=(select s_id from sub_factors where name=%s)AND temperature=(select s_id from sub_factors where name=%s) AND waterlevel=(select s_id from sub_factors where name=%s) AND soiltype=(select s_id from sub_factors where name=%s)))  group by crop_name',(Vseason,Vtemp,Vwater,Vsoil))
            #cursor.execute('SELECT * from crop_calendar where id=(Select c_id from crops where crop_name=%s)  group by crop_name',(sku))
            #data = cursor.fetchall()
            #return render_template(request,'cropcalendar.html', data=data)

@app.route('/contact-us',methods=['GET', 'POST'])
def contact():
    if request.method == 'POST':
        print("hello")
        # Create variables for easy access
        name = request.form['name']
        email = request.form['email']
        subject = request.form['subject']
        msg1 = request.form['msg1']
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('INSERT INTO contactus VALUES ( NULL,%s, %s, %s,%s)', (name, email, subject,msg1))
        mysql.connection.commit()
        msg = 'You have sent the message!' 
        return render_template('contact-us.html',msg=msg)
    else:
         return render_template('contact-us.html')

@app.route('/profile')
def profile():
    return render_template('profile.html')

@app.route('/mydiseases')
def mydiseases():
    return render_template('mydiseases.html')

@app.route('/mycrops')
def mycrops():
    return render_template('mycrops.html')

@app.route('/logout')
def logout():
    # Remove session data, this will log the user out
   session.pop('loggedin', None)
   session.pop('id', None)
   session.pop('username', None)
   # Redirect to login page
   return redirect(url_for('login'))

@app.route('/adminhome')
def adminhome():
    return render_template('adminhome.html')

@app.route('/admincropcal',methods=['GET','POST'])
def admincropcal():
    msg = ''
    if request.method == 'POST':
          crop_name = request.form['crop_name']
          print(crop_name)
          step1 = request.form['step1']
          step2 = request.form['step2']
          step3 = request.form['step3']
          step4 = request.form['step4']
          step5 = request.form['step5']  
          step6 = request.form['step6']
          step7 = request.form['step7']
          step8 = request.form['step8']
          step9 = request.form['step9']
          step10 = request.form['step10']  
          cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
          cursor.execute('INSERT INTO crop_calendar VALUES ( NULL,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)', (crop_name,step1,step2,step3,step4,step5,step6,step7,step8,step9,step10))
          mysql.connection.commit()
          msg = 'You have successfully inserted values into database table!'
          cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
          cursor.execute('SELECT * FROM crop_calendar')
          rows = cursor.fetchall()
          table = Results(rows)
          table.border=True
          return render_template('admincropcal.html',msg=msg,table=table)
    else:
          cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
          cursor.execute('SELECT * FROM crop_calendar')
          rows = cursor.fetchall()
          table = Results(rows)
          table.border=True
          return render_template('admincropcal.html',table=table)
         

@app.route('/admincropcaledit/<int:id>')
def edit_view(id):
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT * FROM crop_calendar where id=%s", (id,))
    row = cursor.fetchone()
    if row:
        return render_template('admincropcaledit.html', row=row)
    else:
        return 'Error loading #{id}'.format(id=id)

@app.route('/update', methods=['POST'])
def update_user():
    cname = request.form['crop_name']
    step1 = request.form['step1']
    step2 = request.form['step2']
    step3 = request.form['step3']
    step4 = request.form['step4']
    step5 = request.form['step5']
    step6 = request.form['step6']
    step7 = request.form['step7']
    step8 = request.form['step8']
    step9 = request.form['step9']
    step10 = request.form['step10']
    _id = request.form['id']
    # validate the received values
    if cname and _id and request.method == 'POST':
        sql = "UPDATE crop_calendar SET crop_name=%s, `1`=%s, `2`=%s,`3`=%s,`4`=%s,`5`=%s,`6`=%s,`7`=%s,`8`=%s,`9`=%s,`10`=%s WHERE id=%s"
        data = (cname, step1, step2,step3,step4,step5,step6,step7,step8,step9,step10,_id,)
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute(sql, data)
        mysql.connection.commit()
        msg = 'You have successfully updated values!'
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM crop_calendar')
        rows = cursor.fetchall()
        table = Results(rows)
        table.border=True
        return render_template('admincropcal.html',msg=msg,table=table)

    else:
        return 'Error while updating user'
       
@app.route('/delete/<int:id>')
def delete_user(id):
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("DELETE FROM crop_calendar WHERE id=%s", (id,))
    msg = 'You have successfully deleted crop details!'
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute('SELECT * FROM crop_calendar')
    rows = cursor.fetchall()
    table = Results(rows)
    table.border=True
    return render_template('admincropcal.html',msg=msg,table=table)
       
class Results(Table):
    id = Col('id')
    crop_name = Col('crop_name')
    modify = LinkCol('Modify', 'edit_view', url_kwargs=dict(id='id'),anchor_attrs={'type': 'button','class': 'btn btn-success'})
    delete = LinkCol('Delete', 'delete_user', url_kwargs=dict(id='id'),anchor_attrs={'type': 'button','class': 'btn btn-dark'})
 
@app.route('/adminplant',methods=['GET','POST'])
def adminplant():
    msg = ''
    if request.method == 'POST':
          did = request.form['id']
          name = request.form['name']
          print(name)
          description = request.form['description']
          cause = request.form['cause']
          treatment_measures = request.form['treatment_measures']
          cost = request.form['cost']
           
          cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
          cursor.execute('INSERT INTO disease_detection VALUES ( %s,%s,%s,%s,%s,%s)', (did,name,description,cause,treatment_measures,cost))
          mysql.connection.commit()
          msg = 'You have successfully inserted values into database table!'
          cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
          cursor.execute('SELECT * FROM disease_detection')
          rows = cursor.fetchall()
          table1 = Results1(rows)
          table1.border=True
          return render_template('adminplant.html',msg=msg,table1=table1)
    else:
          cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
          cursor.execute('SELECT * FROM disease_detection')
          rows = cursor.fetchall()
          table1 = Results1(rows)
          table1.border=True
          return render_template('adminplant.html',table1=table1)
         

@app.route('/adminplantedit/<int:id>')
def edit_view1(id):
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT * FROM disease_detection where id=%s", (id,))
    row = cursor.fetchone()
    if row:
        return render_template('adminplantedit.html', row=row)
    else:
        return 'Error loading #{id}'.format(id=id)

@app.route('/update1', methods=['POST'])
def update_user1():
    did = request.form['id']
    cname = request.form['name']
    description = request.form['description']
    cause = request.form['cause']
    treatment_measures = request.form['treatment_measures']
    cost = request.form['cost']
    _id = request.form['id']
    # validate the received values
    if cname and _id and request.method == 'POST':
        sql = "UPDATE disease_detection SET id=%s, name=%s, description=%s, cause=%s,treatment_measures=%s,cost=%s WHERE id=%s"
        data = (did,cname,description,cause,treatment_measures,cost,_id,)
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute(sql, data)
        mysql.connection.commit()
        msg = 'You have successfully updated values!'
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM disease_detection')
        rows = cursor.fetchall()
        table1 = Results1(rows)
        table1.border=True
        return render_template('adminplant.html',msg=msg,table1=table1)

    else:
        return 'Error while updating user'
       
@app.route('/delete1/<int:id>')
def delete_user1(id):
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("DELETE FROM disease_detection WHERE id=%s", (id,))
    msg = 'You have successfully deleted disease details!'
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute('SELECT * FROM disease_detection')
    rows = cursor.fetchall()
    table1 = Results1(rows)
    table1.border=True
    return render_template('adminplant.html',msg=msg,table1=table1)
       
class Results1(Table):
    id = Col('id')
    name = Col('name')
    modify = LinkCol('Modify', 'edit_view1', url_kwargs=dict(id='id'),anchor_attrs={'type': 'button','class': 'btn btn-success'})
    delete1 = LinkCol('Delete', 'delete_user1', url_kwargs=dict(id='id'),anchor_attrs={'type': 'button','class': 'btn btn-dark'})

@app.route('/predict', methods=['GET', 'POST'])
def upload():
  
  if request.method == 'POST':
        # Get the file from post request
        f = request.files['file']

        # Save the file to ./uploads
        basepath = os.path.dirname(__file__)
        file_path = os.path.join(
            basepath, 'uploads', secure_filename(f.filename))
        f.save(file_path)

        # Make prediction
        preds = model_predict(file_path, model)

        # Process your result for human
        #pred_class = preds.argmax(axis=-1)            # Simple argmax
        #print(pred_class)
        pred_class = preds.flatten()   # AlexNet Decode
       # pred_class = decode_predictions(preds, top=1)
#        print(pred_class)
        j = pred_class.max()
 #      li=[pred_class]
        for index,item in enumerate(pred_class):
             if item == j:
#                     #print(index)
##                     result1 = li[index-1]
##                     print(result1)
                 result=output_list[index]          # Convert to string
                 cursor = mysql.connection.cursor()
                 cursor.execute('SELECT * FROM disease_detection where name=%s',(result,))
                 data = cursor.fetchall()
                 columns = [column[0] for column in cursor.description]
                 #print(columns)
                 #return render_template('disease.html', data=data)
                 results = []
                 
                 for row in data:
#                        plant_dict = {
#                                'id': plant[0],
#                                'name': plant[1],
#                                'description': plant[2],
#                                'cause': plant[3],
#                                'treatment_measures': plant[4],
#                                'cost': plant[5]}
                        results.append(dict(zip(columns, row)))
    
                 print(results)
        #return result
        return jsonify(results)
    
        #return render_template('disease.html', data=data)
  return None


    