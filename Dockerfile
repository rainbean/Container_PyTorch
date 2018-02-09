FROM rainbean/tensorflow:latest

LABEL maintainer "Jimmy Lee"

# install opencv dependencies
RUN apt-get update && \
    apt-get install -y  --no-install-recommends \
	   ffmpeg openexr webp libgtk2.0-0 \
	   && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# install extra library
RUN pip3 --no-cache-dir install --upgrade \
        http://download.pytorch.org/whl/cpu/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl \
        torchvision \
        tensorboardX \
        scikit-image
