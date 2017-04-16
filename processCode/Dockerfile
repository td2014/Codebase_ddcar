FROM ros:kinetic-perception
RUN apt-get -y update
RUN apt-get install -y vim
RUN apt-get install -y ros-kinetic-ros-tutorials
RUN apt-get install -y ros-kinetic-rqt-common-plugins
RUN apt-get install -y ros-kinetic-diagnostics
RUN apt-get install -y libpcap0.8-dev
# The basics
RUN apt-get install -q -y \
        wget \
        pkg-config \
        git-core \
        python \
        python-dev \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install Pip n Python modules
RUN wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py \
    && \ 
    pip --no-cache-dir install \
        scipy \
        numpy \
        matplotlib \
        pandas \
        ipykernel \
        jupyter \
        pyyaml \
        shapely \
    && \
    python -m ipykernel.kernelspec
