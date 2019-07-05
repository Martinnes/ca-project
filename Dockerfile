# Add a base image to build this image off of
FROM circleci/python:2.7

#Install Python modules needed by the Python app
COPY requirements.txt /usr/src/app/
RUN pip install --user --no-cache-dir -r /usr/src/app/requirements.txt

#copy files required for app to run
COPY . /usr/src/app
#COPY *.py /usr/src/app/
#COPY app /usr/src/app/app
#COPY db_repository /usr/src/app/db_repository

# Add a default port containers from this image should expose
EXPOSE 5000 

# Add a default command for this image
CMD ["python", "/usr/src/app/run.py"]

