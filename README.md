# docker-usbipd

[docker-usbipd](https://github.com/jr42/docker-usbipd) is a lightweight, containerized version of [usbipd](https://www.kernel.org/doc/Documentation/usb/usbipd.txt) designed to share any USB device over IP. Whether you're sharing sensors, dongles, or other USB peripherals, this container makes it easy to expose your USB device to the network for remote access.

## Features

- **Generic USB Sharing:** Share any USB device over IP using usbipd.
- **Multi-Architecture Support:** Built for both `linux/amd64` and `linux/arm64`.

## Prerequisites

- A USB device attached to your host (e.g. `/dev/ttyUSB0`, `/dev/bus/usb/001/002`, etc.)
- Docker 19.03 or later.
- For Kubernetes deployments, ensure the host has access to the USB device.

## Usage

### Running with Docker

To run the container locally and share a USB device, use the following command (adjust the device path as needed):

```bash
docker run --rm --device=/dev/ttyUSB0 ghcr.io/jr42/docker-usbipd:latest
