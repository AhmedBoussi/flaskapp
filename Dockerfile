# our base image
#FROM alpine:latest

# Install python and pip
#RUN apk add --update py-pip

# upgrade pip
#RUN pip install --upgrade pip

# install Python modules needed by the Python app
#COPY requirements.txt /usr/src/app/
#RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt


# copy files required for the app to run
#COPY app.py /usr/src/app/
#COPY templates/index.html /usr/src/app/templates/

# tell the port number the container should expose
#EXPOSE 5000

# run the application
#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
#CMD ["python3", "/usr/src/app/app.py"]
FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]