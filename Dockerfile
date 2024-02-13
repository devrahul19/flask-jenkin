FROM python:3.11
ENV FLASK_RUN_HOST=0.0.0.0
WORKDIR /home/rahul/flask-jenkin/
COPY . /
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "src/run.py"]
