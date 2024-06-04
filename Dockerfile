FROM tensorflow/tensorflow:2.10.0 

RUN apk update && apt-get add nvidia-cuda-toolkit-11-7
# Copy the application code
COPY . /app

# Set the working directory
WORKDIR /app

# Install dependencies 
RUN pip install -r requirements.txt 

# Expose the port
EXPOSE 8501

# Entrypoint for running the app
CMD ["python", "app.py"]