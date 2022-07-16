FROM arm32v7/python:3.9-slim-bullseye

RUN apt-get update

RUN apt-get install -y wget libaom0 libatk-bridge2.0-0 libatk1.0-0 libatlas3-base libatspi2.0-0 libavcodec58 libavformat58 \
 libavutil56 libbluray2 libcairo-gobject2 libcairo2 libchromaprint1   libdatrie1 libdrm2 libepoxy0 \
 libfontconfig1 libgdk-pixbuf2.0-0 libgfortran5 libgme0 libgraphite2-3 libgsm1 libgtk-3-0 libharfbuzz0b  libjbig0 \
 libmp3lame0 libmpg123-0 libogg0  libopenjp2-7 libopenmpt0 libopus0 libpango-1.0-0 libpangocairo-1.0-0 \
 libpangoft2-1.0-0 libpixman-1-0 librsvg2-2 libshine3 libsnappy1v5 libsoxr0 libspeex1 libssh-gcrypt-4 libswresample3 \
 libswscale5 libthai0 libtheora0 libtiff5 libtwolame0 libva-drm2 libva-x11-2 libva2 libvdpau1 libvorbis0a libvorbisenc2 \
 libvorbisfile3  libwavpack1 libwayland-client0 libwayland-cursor0 libwayland-egl1 libwebp6 libwebpmux3 \
 libxcb-render0 libxcb-shm0 libxcomposite1 libxcursor1 \
 libxdamage1 libxfixes3 libxi6 libxinerama1 libxkbcommon0 libxrandr2 libxrender1 libxvidcore4 libzvbi0 \
 libatlas3-base libgfortran5 

RUN wget https://www.piwheels.org/simple/opencv-python-headless/opencv_python_headless-4.6.0.66-cp39-cp39-linux_armv7l.whl#sha256=dfae669909d3b96416202844aa38f697aa81c84d17eda0324720c512c3ce0bbd

RUN wget https://www.piwheels.org/simple/numpy/numpy-1.23.1-cp39-cp39-linux_armv7l.whl#sha256=c445b798864ecce1dc932b1b530163300db9f8d57eb0c10f31f4661aa70bc15e


RUN pip3 install --upgrade pip

RUN pip3 install numpy-1.23.1-cp39-cp39-linux_armv7l.whl

RUN pip3 install opencv_python_headless-4.6.0.66-cp39-cp39-linux_armv7l.whl

RUN rm  opencv_python_headless-4.6.0.66-cp39-cp39-linux_armv7l.whl numpy-1.23.1-cp39-cp39-linux_armv7l.whl
