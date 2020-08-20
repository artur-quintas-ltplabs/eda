FROM python:3.8

# Intall jdk so that h2o can work
RUN apt-get update && apt-get install -y --no-install-recommends openjdk-11-jdk

# install R
RUN apt-get update && apt-get install -y --no-install-recommends r-base

# Setup work space
WORKDIR /app
ADD pre-requirements.txt /app/
ADD requirements.txt /app/

# Nasty pre-installs due to pystan <-> fbprophet dependency shenannigans
RUN pip install --upgrade pip && rm -rf /root/.cache/pip
RUN pip install -r pre-requirements.txt && rm -rf /root/.cache/pip
RUN pip install pystan>=2.14 && rm -rf /root/.cache/pip

# Install python goodies
RUN pip install -r requirements.txt && rm -rf /root/.cache/pip
