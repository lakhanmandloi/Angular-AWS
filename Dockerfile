FROM node:8.9.4-alpine

# Install AWS-CLI
RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

RUN npm install -g @angular/cli
RUN ng -v

WORKDIR project/installations/
COPY https://raw.githubusercontent.com/lakhanmandloi/Angular-AWS/master/package.json /project/installations/
COPY https://raw.githubusercontent.com/lakhanmandloi/Angular-AWS/master/package-lock.json /project/installations/
RUN npm install
