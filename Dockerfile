FROM node:8.9.4-alpine

# Install AWS-CLI
RUN apk install -y python python-pip groff
RUN pip install --upgrade pip
RUN pip install awscli

RUN node -v
