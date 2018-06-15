FROM node:6.10.3-slim
RUN apt-get -y update && apt-get install -y
WORKDIR /app
COPY . /app/
EXPOSE 80
RUN  npm install \
    && npm run build \
    && mkdir /var/www/html \
    && cp -r dist/* /var/www/html \
    && rm -rf /app
CMD ["nginx","-g","daemon off;"]
