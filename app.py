# Import libraries
from flask import Flask, render_template, request, jsonify
import pickle
import numpy as np

app = Flask(__name__)

# Load the model
model = pickle.load(open('./model.pkl','rb'))


@app.route('/')
def home():
    return render_template("index.html")

@app.route("/topevusa")
def topevusa():
    return render_template("topevusa.html")
    
@app.route("/tableauviz")
def tableauviz():
    return render_template("tableauviz.html")
    
@app.route("/evstations")
def evstations():
    return render_template("evstations.html")

@app.route("/machinelearning")
def machinelearning():
    return render_template("machinelearning.html")

@app.route("/predict",methods=['POST'])
def predict():

    if request.method == "POST":
        global arr,prediction
        # getting input with name = fuel in HTML form
        fuel = request.form.get("fuel")
        # getting input with name = green in HTML form
        ghs = request.form.get("green")
        # getting input with name = co2 in HTML form
        combco2 = request.form.get("co2")

        # Convert string into integer 
        gh = int(ghs)
        co = int(combco2)

        # Check fuel type and assign value to that fuel parameter
        if fuel == "di":
            d = 1
        else:
            d = 0
        if fuel == 'el':
            e = 1
        else:
            e = 0
        if fuel == 'eth/gas':
            eg = 1
        else:
            eg = 0
        if fuel == 'gas':
            g =1
        else:
            g =0
        if fuel == 'gas/el':
            ge = 1
        else:
            ge = 0
        if fuel == 'h2':
            h = 1
        else:
            h = 0
        
        # Save all values in the list
        arr = [d, e, eg, g, ge, h, gh, co]
        # Convert list to numpy array
        np_array = np.asarray(arr)
        # Reshape array (1,8) (one input of 8 features)
        arr1 = np_array.reshape(1,8)
        # Predict the model
        prediction = model.predict([arr])
        # Take the first value of prediction
        output = prediction[0]   

    return render_template("predict.html", arr1 = arr1, output = output)
       
if __name__ == '__main__':
    app.run(debug=True)