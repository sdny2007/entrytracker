#Install the OS
FROM python:3.10.0-alpine
#Base directory
WORKDIR /project/entrytracker/
#Copy application files
COPY ./entryTracker/ .
#Run the requirements: pymysql+flask
RUN pip install -r ./requirements.txt
#Set entrypoint
ENTRYPOINT ["python3", "./app.py"]
#Expose the application port
EXPOSE 5000
