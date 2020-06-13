#! /usr/bin/env bash

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  echo "ERROR - Script must be sourced."
  exit 1
fi

_base_path=$(builtin cd "$(dirname "${BASH_SOURCE[0]}")/.." || return; pwd)
if [[ -z "$_base_path" ]]; then
  echo "ERROR - Unable to find path."
  return 1
fi


#------------------------------------------------------------------------------
# Common
#------------------------------------------------------------------------------
export PROJECT_PATH=${_base_path}
echo "PROJECT_PATH=${PROJECT_PATH}"


#------------------------------------------------------------------------------
# Ansible
#------------------------------------------------------------------------------
export ANSIBLE_CONFIG="${_base_path}/ansible.cfg"
echo "ANSIBLE_CONFIG=${ANSIBLE_CONFIG}"
export ANSIBLE_INVENTORY="${_base_path}/vagrant/.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory"
echo "ANSIBLE_INVENTORY=${ANSIBLE_INVENTORY}"


#------------------------------------------------------------------------------
# Vagrant
#------------------------------------------------------------------------------
#export VAGRANT_EXPERIMENTAL="disks"
#echo "VAGRANT_EXPERIMENTAL=${VAGRANT_EXPERIMENTAL}"

unset _base_path
