FROM colstrom/python

RUN apk add --update-cache gcc musl-dev python3-dev \
    && pip install bpython \
    && apk del gcc musl-dev python3-dev

ENTRYPOINT ["bpython"]
