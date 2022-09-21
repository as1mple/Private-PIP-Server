FROM python:3.8

RUN pip install --upgrade pip && \
    pip install -U passlib pypiserver[cache]==1.2.0 && \
    pip cache purge

COPY . /app/
WORKDIR /app/

CMD python setup.py sdist; pypi-server -p 8998 /app/dist/