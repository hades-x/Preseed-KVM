#!/bin/bash

# Demande le nom de la VM à l'utilisateur
echo "Entrez le nom de la VM :"
read VM_NAME

# Exécute virt-install avec le nom de la VM fourni
virt-install \
  --name "$VM_NAME" \
  --memory 2048 \
  --vcpus 2 \
  --location /home/hades/Documents/debian-12.4.0-amd64-netinst.iso  \
  --os-variant debian10 \
  --initrd-inject=preseed.cfg \
  --extra-args="auto=true priority=critical preseed/file=/preseed.cfg" \
  --disk size=10,format=qcow2,bus=virtio

echo "Installation de la VM $VM_NAME lancée."
