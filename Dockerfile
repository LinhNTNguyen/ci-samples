FROM katalonstudio/katalon
run wget https://chromedriver.storage.googleapis.com/85.0.4183.87/chromedriver_linux64.zip
run unzip chromedriver_linux64.zip
run cp -f chromedriver /opt/katalonstudio/configuration/resources/drivers/chromedriver_linux64/chromedriver
RUN apt-get install unzip ffmpeg -y && a=$(uname -m) && rm -r /tmp/chromedriver/ || true && mkdir /tmp/chromedriver/ -p && 
latest=88.0.4324.96 && 
wget -O /tmp/chromedriver/chromedriver.zip ‘http://chromedriver.storage.googleapis.com/88.0.4324.96/chromedriver_linux64.zip’

RUN echo “$PATH:$(which ffmpeg)” > /etc/environment
RUN cat /etc/environment
