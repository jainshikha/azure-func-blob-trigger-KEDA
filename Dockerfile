# To enable ssh & remote debugging on app service change the base image to the one below
# FROM mcr.microsoft.com/azure-functions/python:2.0-python3.6-appservice
FROM mcr.microsoft.com/azure-functions/python:2.0-python3.7-appservice

ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true\
    AzureWebJobsStorage='DefaultEndpointsProtocol=https;AccountName=usagetransparancy;AccountKey=frV+yLTmpzWm6zQfl3osXRqU5IQmMYpE/9JKUBRD1Dt94xtgRUAoBB3pBGJ6QNIzpeAUD1RcNNruur/+pXgbRA==;EndpointSuffix=core.windows.net'

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY .. /home/site/wwwroot