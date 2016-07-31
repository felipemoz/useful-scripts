#!/bin/bash

export OS_AUTH_URL=http://172.26.132.10:5000/v3
export CINDER_ENDPOINT_TYPE=internalURL
export NOVA_ENDPOINT_TYPE=internalURL
export OS_ENDPOINT_TYPE=internalURL
export OS_NO_CACHE=1

# For openstackclient
export OS_IDENTITY_API_VERSION=3
export OS_AUTH_VERSION=3

export OS_USERNAME="okta_id"
export OS_TENANT_NAME="support-lab"
export OS_PROJECT_NAME="support-lab"
export OS_USER_DOMAIN_NAME=HORTON
export OS_PROJECT_DOMAIN_NAME=HORTON

echo
read -s -p "Please enter the Password for '$OS_USERNAME': " OS_PASSWORD_INPUT
#read -sr OS_PASSWORD_INPUT
export OS_PASSWORD=$OS_PASSWORD_INPUT

echo -e "\n\nThe OpenStack Client Environment is now set to:"
echo " UserName = " $OS_USERNAME
echo " OpenStack Project Name = " $OS_TENANT_NAME
echo -e " OpenStack Domain Name = " $OS_USER_DOMAIN_NAME "\n"

if [ -z "$OS_REGION_NAME" ]; then unset OS_REGION_NAME; fi
