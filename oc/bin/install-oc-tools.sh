#!/bin/bash

set -euo pipefail

version="${1:-latest}"

echo "Installing openshift-installer"
mkdir -p /tmp/openshift-installer
pushd /tmp/openshift-installer
wget "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${version}/openshift-install-linux.tar.gz"
tar -xzvf openshift-install-linux.tar.gz
sudo mv openshift-install /usr/local/bin/
sudo chown root:root /usr/local/bin/openshift-install
popd

rm -rf /tmp/openshift-installer

echo "Installing oc and kubectl"
mkdir -p /tmp/openshift-client
pushd /tmp/openshift-client
wget "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${version}/openshift-client-linux.tar.gz"
tar -xzvf openshift-client-linux.tar.gz
sudo mv oc /usr/local/bin/
sudo mv kubectl /usr/local/bin
sudo chown root:root /usr/local/bin/oc
sudo chown root:root /usr/local/bin/kubectl
popd

rm -rf /tmp/openshift-client

echo "Done"
