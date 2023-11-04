FROM python:3.9
WORKDIR /sportballs
COPY ./requirements.txt /sportballs/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /sportballs/requirements.txt

COPY ./app /sportballs/app
COPY ./model /sportballs/model

ENV PYTHONPATH "${PYTHONPATH}:/sportballs"

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6 -y

# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]