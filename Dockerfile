FROM ubuntu:16.04

# Switch to root
USER root

# Work Directory
WORKDIR project/installations/

# Update everything
RUN apt-get update

# Install Dependencies
RUN apt-get install -y build-essential \
			zlib1g-dev \
			locales \
			curl
# Install AWS-CLI
RUN apt-get install -y python python-pip groff
RUN pip install --upgrade pip
RUN pip install awscli

# Install NPM
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && apt-get install -y nodejs
RUN npm install -g @angular/cli  
