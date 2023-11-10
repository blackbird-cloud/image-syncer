FROM debian:stable-slim

RUN apt update
RUN apt install -y skopeo amazon-ecr-credential-helper curl zip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

COPY . /root

RUN chmod +x /root/script.sh

CMD [ "/root/script.sh" ]