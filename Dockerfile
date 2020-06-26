FROM python:3

WORKDIR /mysite

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

#COPY ./mysite/ /mysite/

CMD [ "python", "/mysite/manage.py", "runserver", "0.0.0.0:8000" ]