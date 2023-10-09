FROM ubuntu:22.04

RUN mkdir /app
WORKDIR /app
RUN wget https://deac-ams.dl.sourceforge.net/project/itk-snap/itk-snap/4.0.2/itksnap-4.0.2-Linux-gcc64.tar.gz
RUN tar -xzf /app/itksnap-4.0.2-Linux-gcc64.tar.gz
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl -y
RUN apt-get install libx11-6 -y
RUN apt-get install -y libglx0
RUN apt-get install -y libgl1
RUN apt-get install -y libopengl-dev
RUN apt-get install -y libxkbcommon0
RUN apt-get install -y libegl-dev
RUN apt-get install -y libfontconfig-dev
RUN apt-get install -y libdbus-1-dev
RUN apt-get install -y libxcb-xinerama0 libxkbcommon-x11-0
RUN apt-get install -y qt5-gtk-platformtheme
RUN apt-get install -y qtbase5-dev

RUN export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/lib/x86_64-linux-gnu/qt5/plugins/platforms

ENTRYPOINT /app/itksnap-4.0.2-20230925-Linux-gcc64/bin/itksnap
