FROM ubuntu

LABEL YourName="rgray26@cmc.edu"

RUN apt-get update -y && \
    apt-get install -y python3 python3-pip python3-venv

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN python3 -m venv venv
RUN venv/bin/pip install -r requirements.txt

COPY . /app

ENV PATH="/app/venv/bin:$PATH"

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
