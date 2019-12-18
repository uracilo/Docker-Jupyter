FROM ubuntu:18.04
WORKDIR /code
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y build-essential python-dev
RUN apt-get install -y python python-distribute python3-pip
RUN pip3 --version
ADD requirements.txt /code
RUN pip3 install -r requirements.txt
RUN mkdir /notebooks
CMD jupyter notebook --allow-root --no-browser --ip 0.0.0.0 --port 8888 /notebooks