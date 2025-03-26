FROM debian:stable-slim

RUN apt-get update && apt-get install -y usbip && apt-get clean

CMD ["usbipd", "--foreground"]