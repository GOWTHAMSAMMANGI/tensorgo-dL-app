FROM tensorflow/tensorflow:2.10.0 

# Copy the application code
COPY . /app

# Set the working directory
WORKDIR /app

# Install dependencies 
RUN pip install -r requirements.txt 

# Entrypoint for running the app
CMD ["python", "app.py"]