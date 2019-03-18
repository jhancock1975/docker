# run with:
# docker run --runtime=nvidia -it -w /tensorflow/maml -v /home/ubuntu/docker/maml:/mnt -e HOST_PERMS=1000:1000 maml

FROM tensorflow/tensorflow:1.13.1-gpu-py3
RUN apt-get -y update
RUN apt install -y git
WORKDIR /tensorflow
COPY requirements.txt /tensorflow
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN git clone https://github.com/cbfinn/maml.git
WORKDIR /tensorflow/maml
COPY maml.sh .
CMD ./maml.sh
