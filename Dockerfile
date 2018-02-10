FROM rainbean/tensorflow:1.5

LABEL maintainer "Jimmy Lee"

# install extra library
RUN pip3 --no-cache-dir install --upgrade \
        http://download.pytorch.org/whl/cu90/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl \
        torchvision \
        tensorboardX \
        scikit-image
