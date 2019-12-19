FROM python:3.8.0-slim-buster
WORKDIR kseniia_speech_to_text_bot
COPY . .
RUN apt-get update && apt-get install -y ffmpeg
RUN pip install -r requirements.txt
ENV BOT_TOKEN place_your_uber_sequre_token_here
ENV GOOGLE_APPLICATION_CREDENTIALS path/to/your/file/gcloud_credentials.json 
CMD ["python", "run.py"]
