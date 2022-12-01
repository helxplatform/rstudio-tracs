FROM rocker/verse:latest

COPY rserver.conf ./rserver.conf
RUN sudo apt-get update -y && \
    sudo apt-get install nginx python3.6 -y
COPY default.conf /etc/nginx/conf.d/default.conf
COPY process.py ./process.py
RUN chmod +x ./process.py
COPY start.sh ./start.sh
RUN chmod +x ./start.sh
EXPOSE 8080
CMD ["./start.sh"]
