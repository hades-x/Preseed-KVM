README
Project Description
This project contains a set of scripts to automate the creation, configuration, and deletion of a Debian virtual machine. The project includes three main files:

vminstall.sh
preseed.cfg
des-und.sh
These scripts facilitate the rapid setup of a Debian VM with a specific configuration, ideal for test or development environments.

Files
vminstall.sh
This script uses virt-install to create a Debian virtual machine. The parameters include:

VM Name: deb-test
Memory: 2048 MB
CPU: 2 cores
Source: Debian ISO Image (debian-12.iso)
OS Variant: Debian 10
Disk: 10 GB, qcow2 format
Network: Default configuration
Injection of the preseed.cfg file to automate installation
preseed.cfg
This preconfiguration file for the Debian installer automates the installation process. Configured parameters include:

Language, keyboard layout, and time zone
Root user information
Network configuration and hostname
Disk partitioning
SSH and web server installation
Configuration of Debian repositories and installation of necessary packages
GRUB configuration
des-und.sh
This script cleans up the environment after testing. It:

Destroys the VM deb-test
Removes the VM definition
Deletes the VM disk file
Usage
VM Installation
To create the VM:

Ensure that virt-install and related tools are installed on your system.
Run the vminstall.sh script with appropriate privileges.
VM Deletion
To delete the VM:

Run the des-und.sh script.
Prerequisites
KVM/QEMU installed on your system.
Debian ISO images must be downloaded and accessible by the vminstall.sh script.
Contributions
Contributions to this project are welcome. To propose improvements or corrections, please open an issue or a pull request.

