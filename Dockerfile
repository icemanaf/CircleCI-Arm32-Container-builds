FROM arm32v7/python:3.9-slim-bullseye

RUN apt-get update

RUN apt-get install -y wget ocl-icd-libopencl1 libzvbi0 libpango-1.0-0 libgsm1 libharfbuzz0b libpangoft2-1.0-0 libogg0 \
 libssh-gcrypt-4 libvdpau1 libpangocairo-1.0-0 libavutil56 libtwolame0 libnorm1 libavcodec58 librsvg2-2 libvpx6 libcairo2 \
 libva2 libxvidcore4 libvorbisenc2 librabbitmq4 libxfixes3 libva-drm2 libgme0 libsrt1.4-gnutls libxcb-render0 libbluray2 \
 libvorbis0a libdrm2 libwavpack1 libshine3 libdav1d4 libmpg123-0 libgraphite2-3 libvorbisfile3 libspeex1 libatlas3-base \ 
 libgfortran5 libavformat58 libsoxr0 libpgm-5.3-0 libopus0 libopenmpt0 libxrender1 libdatrie1 libswscale5 libsnappy1v5  \
 libcodec2-0.9 libtheora0 libgdk-pixbuf-2.0-0 libchromaprint1 libsodium23 libx264-160 libudfread0 libswresample3 libcairo-gobject2 \
 libopenjp2-7 libx265-192 libpixman-1-0 libzmq5 libthai0 libva-x11-2 libxcb-shm0 libmp3lame0 libwebpmux3 libaom0 \
 libatlas3-base libgfortran5 

RUN wget https://www.piwheels.org/simple/opencv-python-headless/opencv_python_headless-4.6.0.66-cp39-cp39-linux_armv7l.whl#sha256=dfae669909d3b96416202844aa38f697aa81c84d17eda0324720c512c3ce0bbd

RUN wget https://www.piwheels.org/simple/numpy/numpy-1.23.1-cp39-cp39-linux_armv7l.whl#sha256=c445b798864ecce1dc932b1b530163300db9f8d57eb0c10f31f4661aa70bc15e

RUN pip3 install --upgrade pip

RUN pip3 install python-telegram-bot --upgrade

RUN pip3 install numpy-1.23.1-cp39-cp39-linux_armv7l.whl

RUN pip3 install opencv_python_headless-4.6.0.66-cp39-cp39-linux_armv7l.whl

RUN rm  opencv_python_headless-4.6.0.66-cp39-cp39-linux_armv7l.whl numpy-1.23.1-cp39-cp39-linux_armv7l.whl
