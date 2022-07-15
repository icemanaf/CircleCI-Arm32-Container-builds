FROM arm32v7/python:3.7-slim-buster

RUN apt-get update

RUN apt-get install -y wget libaom0 libatk-bridge2.0-0 libatk1.0-0 libatlas3-base libatspi2.0-0 libavcodec58 libavformat58 \
 libavutil56 libbluray2 libcairo-gobject2 libcairo2 libchromaprint1 libcodec2-0.8.1 libcroco3 libdatrie1 libdrm2 libepoxy0 \
 libfontconfig1 libgdk-pixbuf2.0-0 libgfortran5 libgme0 libgraphite2-3 libgsm1 libgtk-3-0 libharfbuzz0b libilmbase23 libjbig0 \
 libmp3lame0 libmpg123-0 libogg0 libopenexr23 libopenjp2-7 libopenmpt0 libopus0 libpango-1.0-0 libpangocairo-1.0-0 \
 libpangoft2-1.0-0 libpixman-1-0 librsvg2-2 libshine3 libsnappy1v5 libsoxr0 libspeex1 libssh-gcrypt-4 libswresample3 \
 libswscale5 libthai0 libtheora0 libtiff5 libtwolame0 libva-drm2 libva-x11-2 libva2 libvdpau1 libvorbis0a libvorbisenc2 \
 libvorbisfile3 libvpx5 libwavpack1 libwayland-client0 libwayland-cursor0 libwayland-egl1 libwebp6 libwebpmux3 \
 libx264-155 libx265-165 libxcb-render0 libxcb-shm0 libxcomposite1 libxcursor1 \
 libxdamage1 libxfixes3 libxi6 libxinerama1 libxkbcommon0 libxrandr2 libxrender1 libxvidcore4 libzvbi0 \
 libatlas3-base libgfortran5

RUN wget https://www.piwheels.org/simple/opencv-python/opencv_python-4.5.1.48-cp37-cp37m-linux_armv7l.whl#sha256=10972196848a28d1b89584784475c51eae3f160491750adc53165916767b29cd

RUN wget https://www.piwheels.org/simple/numpy/numpy-1.20.0-cp37-cp37m-linux_armv7l.whl#sha256=bd08254aac78b363b14acac456038ce6438bad848e02b275837930115e41ea21

RUN pip3 install --upgrade pip

RUN pip3 install numpy-1.20.0-cp37-cp37m-linux_armv7l.whl

RUN pip3 install opencv_python-4.5.1.48-cp37-cp37m-linux_armv7l.whl

RUN rm numpy-1.20.0-cp37-cp37m-linux_armv7l.whl opencv_python-4.5.1.48-cp37-cp37m-linux_armv7l.whl
