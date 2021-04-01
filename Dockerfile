FROM katalonstudio/katalon
run wget https://chromedriver.storage.googleapis.com/85.0.4183.87/chromedriver_linux64.zip
run unzip chromedriver_linux64.zip
run cp -f chromedriver /opt/katalonstudio/configuration/resources/drivers/chromedriver_linux64/chromedriver
RUN apt-get install unzip ffmpeg -y & a=$(uname -m)

RUN echo “$PATH:$(which ffmpeg)” > /etc/environment
RUN cat /etc/environment
