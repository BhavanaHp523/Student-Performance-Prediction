from flask import Flask, render_template, request
import pickle
import numpy as np

# Load trained model
model = pickle.load(open("model.pkl", "rb"))

app = Flask(__name__)

@app.route('/')
def home():
    return render_template("index.html")


@app.route('/predict', methods=['POST'])
def predict():
    try:
        attendance = float(request.form['attendance'])
        study_hours = float(request.form['study_hours'])
        previous_score = float(request.form['previous_score'])

        # prediction
        input_data = np.array([[attendance, study_hours, previous_score]])
        prediction = model.predict(input_data)[0]

        result = round(prediction, 2)

        return render_template("index.html", prediction_text=f"Predicted Final Score: {result}")

    except:
        return render_template("index.html", prediction_text="Invalid Input")


if __name__ == "__main__":
    app.run(debug=True)
