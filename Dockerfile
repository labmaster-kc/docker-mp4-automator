FROM python:3.7-buster
RUN mkdir /data
RUN mkdir /app

# install ffmpeg
RUN apt-get update -qq && \
    apt-get install ffmpeg -y -qq

# install sma
RUN git clone https://github.com/mdhiggins/sickbeard_mp4_automator.git /app
WORKDIR /app
RUN pip install -r setup/requirements.txt
COPY autoProcess.ini .

ENTRYPOINT ["python3", "/app/manual.py", "-i", "/data/", "-a"]
