FROM ubuntu:24.04
RUN apt update && apt install nginx -y
ADD . /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
