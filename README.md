# Dockerizing Flask

This repo contains the files I used to dockerize a Flask application. 
1. `app.py` - a simple Flask app that returns a message to users who connect to the server.
1. `requirements.txt` - lists the Python dependencies needed to run the application
1. `Dockerfile` - defines how Docker builds the image and runs the Flask app. 
## Build the Docker image 
```
docker build -t flask-docker .
```
## Run the container
``` 
docker run -p 4000:5000 flask-docker
```
Then open your browser at:
```
http://localhost:500
```
