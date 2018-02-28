FROM python:3
RUN apt-get update \
 && apt-get install -y screen \
 && rm -rf /var/lib/apt/lists/*
ADD app/ /app
ADD db/ /db
aDD trader.py /app
ADD balance.py /app
RUN pip install requests
RUN echo "shell /bin/bash" >> /etc/screenrc
ENTRYPOINT [ "screen" ]
