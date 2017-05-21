FROM python:alpine

RUN apk update \
    && apk add gcc musl-dev python3-dev \
    && pip3 install pygments \
    && pip3 install requests \
    && pip3 install sphinx \
    && pip3 install mock \
    && pip3 install babel \
    && pip3 install curtsies \
    && pip3 install greenlet \
    && pip3 install urwid \
    && pip3 install bpython \
    && apk del gcc musl-dev python3-dev \
    && rm -rf /root/.cache

CMD ["bpython"]
