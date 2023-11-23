#!/usr/bin/bash

virt-install \
  --name deb-test \
  --memory 2048 \
  --vcpus 2 \
  --location /home/hades/Documents/debian-12.iso \
  --os-variant debian10 \
  --initrd-inject=preseed.cfg \
  --extra-args="ks=file:/preseed.cfg" \
  --disk size=10,format=qcow2,bus=virtio