FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get install iputils-ping -y
CMD ["8.8.8.8"]
ENTRYPOINT ["ping"]
