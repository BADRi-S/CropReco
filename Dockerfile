# Use Ubuntu 22.04 as base image
FROM ubuntu:22.04

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
    git \
    wget \
    bzip2 \
    ca-certificates \
    curl \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# Install Miniconda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh
ENV PATH /opt/conda/bin:$PATH

# Clone the git repo
RUN git clone https://github.com/RAJPOWELL/Crop-Prediction-using-ML.git /home/Crop-Prediction-using-ML

# Create Conda environment with Python 3.6.12
RUN conda create -y --name crop_prediction_env python=3.6.12

# Activate the Conda environment
SHELL ["conda", "run", "-n", "crop_prediction_env", "/bin/bash", "-c"]

# Install requirements
WORKDIR /home/Crop-Prediction-using-ML
RUN pip install -r requirements.txt

# Launch Flask app
WORKDIR /home/Crop-Prediction-using-ML/server
CMD ["python", "server.py"]

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# Install frontend dependencies and start React frontend
WORKDIR /home/Crop-Prediction-using-ML
RUN npm install
RUN npm start

# Expose ports
EXPOSE 5000 3000
