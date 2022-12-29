FROM jupyterhub/jupyterhub
FROM ubuntu

#ARG NOTEBOOKS_FROM
#ARG HUB_PATH
#
#COPY NOTEBOOKS_FROM HUB_PATH

RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3.11 gcc python3-dev sudo -y
RUN apt install python3-pip -y
RUN pip install --upgrade pip

COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade -r requirements.txt && rm requirements.txt

RUN apt-get install -y nodejs

RUN apt-get install npm -y
RUN npm install -g configurable-http-proxy

RUN useradd -m -d /home -s /bin/bash -p $(openssl passwd -1 admin) admin
RUN useradd -m -d /home/users -s /bin/bash -p $(openssl passwd -1 12345) user1
RUN useradd -m -d /home/users -s /bin/bash -p $(openssl passwd -1 12345) user2

ENTRYPOINT [ "jupyterhub" ]
