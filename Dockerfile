FROM python:2.7-slim

WORKDIR /usr/src/app/

ADD . /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENV API_KEY $API_KEY
ENV API_SECRET $API_SECRET
ENV USE_TELEGRAM $USE_TELEGRAM
ENV TELEGRAM_BOT_ID $TELEGRAM_ID
ENV TELEGRAM_CHAT_IDS $TELEGRAM_CHATS

CMD ["python","lendingbot.py"]
