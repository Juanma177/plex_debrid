FROM python:3.11

ADD . / ./

RUN python -m venv /venv/

RUN "/venv/bin/pip" install -r ./requirements.txt

ENV TERM=xterm

CMD [ "/venv/bin/python", "./main.py", "--config-dir", "config", "-e", "TERM=xterm"]
