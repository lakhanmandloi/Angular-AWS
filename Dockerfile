FROM node:8.9.4-alpine

# Install AWS-CLI
RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python py-pip && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

RUN npm install @angular/cli
RUN ng -v
