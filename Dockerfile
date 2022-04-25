FROM ubuntu
RUN apt-get update && apt-get install nginx -y

COPY . /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
