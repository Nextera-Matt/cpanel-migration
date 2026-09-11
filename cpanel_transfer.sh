#!/bin/bash
#########################################################################
# Automate cPanel Account Transfer using pkgacct and restorepkg         #
# Written by Matt Hodges (matt.hodges@thg.com)                          #
#########################################################################

# Prompt for necessary information
read -p "Enter the cPanel account to transfer: " cpanel_account
read -p "Enter the source VM hostname/IP: " source_vm
read -p "Enter the target VM hostname/IP: " target_vm
read -p "Enter the SSH port for the target VM (default 22): " target_ssh_port
target_ssh_port=${target_ssh_port:-22}

# Prompt for root passwords
echo "Enter root password for source VM ($source_vm):"
read -s source_vm_password

echo "Enter root password for target VM ($target_vm):"
read -s target_vm_password

# Run the Ansible Playbook for Backup and Transfer
ANSIBLE_PASSWORD=$source_vm_password ansible-playbook -i localhost, cpanel_transfer.yml \
  --extra-vars "source_vm=$source_vm target_vm=$target_vm cpanel_account=$cpanel_account target_ssh_port=$target_ssh_port" \
  --ask-pass --ask-become-pass

if [ $? -eq 0 ]; then
    echo "cPanel account transfer completed successfully!"
else
    echo "Error during cPanel account transfer."
    exit 1
fi

