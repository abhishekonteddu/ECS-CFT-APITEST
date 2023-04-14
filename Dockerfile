FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl \
    cron \
    jq
    
EXPOSE 80
COPY entry.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entry.sh
ENTRYPOINT [ "entry.sh" ]
