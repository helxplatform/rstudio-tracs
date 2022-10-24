FROM rocker/rstudio:latest

COPY rserver.conf /etc/rstudio/rserver.conf
RUN sudo apt-get update -y && \
    sudo apt-get install nginx -y
COPY default.conf /etc/nginx/conf.d/default.conf
COPY start.sh ./start.sh
RUN chmod +x ./start.sh
EXPOSE 8080
CMD ["./start.sh"]
