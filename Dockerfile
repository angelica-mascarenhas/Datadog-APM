FROM python:3

RUN pip install flask && pip install ddtrace

EXPOSE 8080

COPY hello.py /hello.py

ENTRYPOINT ["ddtrace-run", "python", "hello.py"]


