FROM ubuntu
RUN apt-get update && apt-get -y install dpkg-dev && apt-get -y install libusb-1.0-0-dev
ADD listusb_1.0-1.deb .
RUN dpkg -i listusb_1.0-1.deb
ENTRYPOINT ["listusb"]
