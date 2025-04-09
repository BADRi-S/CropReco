# 🌾 Crop Prediction Model with Machine Learning and GUI (Dockerized)

This repository contains a **full-stack crop prediction system** that combines Machine Learning with an interactive web interface. The backend is powered by a Flask API, while the frontend is built using React. The entire application is containerized with Docker for easy deployment and reproducibility on a Ubuntu-based system..

---

## 📌 Project Overview

The aim of this project is to **assist farmers and agricultural experts** by predicting the most suitable crops based on environmental and soil parameters. The predictions are made using a trained ML model, and results are displayed through a web-based GUI.

---

## 🧠 How It Works

1. **User Inputs**: The user enters data such as:
   - Temperature
   - Humidity
   - Soil type
   - Nutrient levels (e.g., Nitrogen, Phosphorous, Potassium)

2. **Flask Backend**:
   - Receives data via HTTP requests from the frontend.
   - Passes the data to a pre-trained Machine Learning model.
   - The model predicts the best crop based on the input parameters.
   - Sends the result back as a JSON response.

3. **React Frontend**:
   - Displays a simple and interactive form.
   - Shows the predicted crop recommendation to the user in real-time.

---

## 🧰 Tech Stack

- **Backend**: Flask, Python 3.6.12, Scikit-learn
- **Frontend**: React, JavaScript, HTML/CSS
- **Environment Management**: Conda
- **Containerization**: Docker
- **OS**: Ubuntu 22.04 (Docker base)

---

## 🚀 Quickstart: Run with Docker

### 1. Clone the Repository
```bash
git clone https://github.com/RAJPOWELL/Crop-Prediction-using-ML.git
cd Crop-Prediction-using-ML
```

### 2. Build the Docker Image
```bash
docker build -t crop-predictor .
```

### 3. Run the Docker Container
```bash
docker run -p 5000:5000 -p 3000:3000 crop-predictor
```

### 4. Access the App
- 🌐 React Frontend: [http://localhost:3000](http://localhost:3000)
- 🛠️ Flask Backend (API): [http://localhost:5000](http://localhost:5000)

---

## ⚙️ Manual Setup (Without Docker)

> For developers or contributors who prefer to run the app locally without Docker.

### ✅ Backend (Flask)
```bash
cd Crop-Prediction-using-ML
pip install -r requirements.txt
cd server
python server.py
```

### ✅ Frontend (React)
```bash
cd Crop-Prediction-using-ML
npm install
npm start
```

---

## 📲 Usage Instructions

1. Launch the GUI (`http://localhost:3000`).
2. Fill in the form with your environmental and soil data.
3. Click on **Predict**.
4. The recommended crop will appear on the screen.

---

## 🗂️ Folder Structure

```
Crop-Prediction-using-ML/
├── server/                  # Flask backend with server.py
├── requirements.txt         # Python backend dependencies
├── Dockerfile               # Docker build file
├── README.md                # Project documentation
├── node_modules/            # React dependencies (after npm install)
├── public/                  # React public folder
├── src/                     # React source code
└── package.json             # React project config
```

---

## ✅ Features

- ✅ ML-based crop prediction
- ✅ Fully responsive React UI
- ✅ Dockerized for easy deployment
- ✅ Local development setup options
- ✅ Scalable architecture for future improvements

---

