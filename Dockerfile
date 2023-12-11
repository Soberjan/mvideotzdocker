FROM ubuntu:latest

RUN apt-get update && apt-get install  -y python3 python3-pip

RUN pip3 install jupyter

RUN pip3 install pandas

RUN pip3 install matplotlib

RUN pip3 install seaborn

RUN pip3 install scipy

RUN useradd -ms /bin/bash jupyter

USER jupyter

WORKDIR /home/jupyter

ENTRYPOINT ["jupyter", "notebook", "--ip=*"]

