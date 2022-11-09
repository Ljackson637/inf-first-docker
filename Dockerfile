FROM debian:latest 

# RUN apt-get update && apt-get install -y bash nginx && apt-get clean

RUN apt-get update 
RUN apt-get install -y bash nginx 

EXPOSE 80

VOLUME /usr/share/nginx/html

# ENTRYPOINT
CMD nginx -g 'daemon off;'