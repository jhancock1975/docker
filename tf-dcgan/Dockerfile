FROM tensorflow/tensorflow:1.13.1-gpu-py3
RUN apt-get -y update
RUN apt install -y git libsm6 libxext6 libxrender1
WORKDIR /tensorflow
COPY requirements.txt /tensorflow
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN git clone https://github.com/carpedm20/DCGAN-tensorflow.git
WORKDIR /tensorflow/DCGAN-tensorflow
COPY tf-dcgan.sh .
CMD ./tf-dcgan.sh
