FROM ubuntu
RUN apt-get update && apt-get install nginx -y

COPY . /var/www/html
WORKDIR /var/www/html
EXPOSE 8080
CMD ["nginx","-g","daemon off;"]
