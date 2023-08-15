FROM datagrok/python:3.8
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5353
ENV TEMP_DIR=/tmp
ENTRYPOINT ["python", "app.py"]
