#SIMPLE WEB APP
FROM python:3

WORKDIR /usr/src/app

#ARG FRUIT_ARG
#ENV FRUIT FRUIT_ARG



COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT [ "python", "./app.py"]
#CMD ["pear"]
#CMD [ "python", "./app.py" "$FRUIT" ]
