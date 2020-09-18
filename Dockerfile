FROM katalonstudio/katalon
run wget https://chromedriver.storage.googleapis.com/85.0.4183.87/chromedriver_linux64.zip
run unzip chromedriver_linux64.zip
run cp -f chromedriver /opt/katalonstudio/configuration/resources/drivers/chromedriver_linux64/chromedriver
