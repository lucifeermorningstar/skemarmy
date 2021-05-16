FROM python:3.9-alpine

LABEL authors='NaytSeyd'

RUN echo 'http://dl-4.alpinelinux.org/alpine/v3.13/main' >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache git bash postgresql postgresql-client postgresql-dev libpq curl figlet \
    ffmpeg neofetch musl libxml2 libwebp-dev libffi-dev openssl-dev musl-dev gcc g++ freetype-dev \
    jpeg-dev libxslt-dev libxml2-dev zlib zlib-dev libjpeg libjpeg-turbo-dev linux-headers jq pv \
    chromium chromium-chromedriver \
    && export CRYPTOGRAPHY_DONT_BUILD_RUST=1 \
    && pip3 install --no-cache-dir Pillow bs4 cowpy emoji gitpython googletrans==3.1.0a0 \
    gtts heroku3 humanize lyricsgenius psycopg2-binary pybase64 pyrogram python-dotenv youtube_dl \
    python-barcode pylast requests removebg selenium speedtest-cli sqlalchemy==1.3.23 tgcrypto urbandict \
    wikipedia qrcode git+https://github.com/NaytSeyd/deethon@master image_to_ascii
