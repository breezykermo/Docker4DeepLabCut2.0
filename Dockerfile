# https://github.com/DeepLabCut/Docker4DeepLabCut2.0
# FROM python:3
# RUN pip install imageio
# install ffmpeg from imageio.
# RUN pip install imageio-ffmpeg


FROM bethgelab/deeplearning:cuda10.0-cudnn7
# RUN add-apt-repository ppa:deadsnakes/ppa #ADDS NEW REPO
RUN apt-get update && apt-get -y install ffmpeg libsm6 libxext6
#
ENV DLClight True
RUN pip install tensorflow-gpu==1.13.1

#see issue #25:
RUN pip install --upgrade pip

RUN pip3 install ruamel_yaml \
				deeplabcutcore \
				ipywidgets \
				seaborn

