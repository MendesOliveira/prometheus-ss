FROM nginx:1.19

RUN apt-get update -y && apt-get install -y apache2-utils && rm -rf /var/lib/apt/lists/*

ENV BASIC_USERNAME=username
ENV BASIC_PASSWORD=password

ENV FORWARD_HOST=localhost
ENV FORWARD_PORT=9090

WORKDIR /
COPY ./etc/nginx/nginx-basic-auth.conf nginx-basic-auth.conf

COPY ./etc/nginx/run.sh ./
RUN chmod 0755 ./run.sh
CMD [ "./run.sh" ]

