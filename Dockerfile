FROM pytorch/pytorch

RUN apt-get update && apt-get install -y git gcc

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt