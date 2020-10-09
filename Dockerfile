FROM python:3.8-alpine

# Set application working directory
WORKDIR /app

# Install requirements
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Install application
COPY ./app.py ./
COPY ./app_test.py ./

EXPOSE 5000

# Run application
CMD [ "flask", "run", "--host", "0.0.0.0" ]


# To build:
# $ docker build -t <IMAGE_NAME> .

# To run:
# $ docker run -p 5000:5000 <IMAGE_NAME>

# To restart:
# $ docker container start <CONTAINER_ID>