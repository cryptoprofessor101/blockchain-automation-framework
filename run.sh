#!/bin/bash
set -e

echo "Starting build process..."

echo "Adding env variables..."
export PATH=/root/bin:$PATH

#Path to k8s config file
KUBECONFIG=/root/.kube/config

#Test addition of Text


echo "Running the playbook..."
#exec ansible-playbook -vv /home/ubuntu/baf/blockchain-automation-framework/platforms/shared/configuration/site.yaml --inventory-file=/home/ubuntu/baf/blockchain-automation-framework/platforms/shared/inventory/ -e "@/home/ubuntu/baf/blockchain-automation-framework/build/network.yaml" -e 'ansible_python_interpreter=/usr/bin/python3' #-e "reset='true'"
#exec ansible-playbook -vv /home/blockchain-automation-framework/baf/blockchain-automation-framework/platforms/shared/configuration/site.yaml --inventory-file=/home/blockchain-automation-framework/baf/blockchain-automation-framework/platforms/shared/inventory/ -e "@/home/blockchain-automation-framework/baf/blockchain-automation-framework/build/network.yaml" -e 'ansible_python_interpreter=/usr/bin/python3' #-e "reset='true'"
#exec ansible-playbook -vv platforms/hyperledger-fabric/configuration/chaincode-ops.yaml --inventory-file=/home/ubuntu/baf/blockchain-automation-framework/platforms/shared/inventory/ -e "@/home/ubuntu/baf/blockchain-automation-framework/build/supplychain.yaml" -e 'ansible_python_interpreter=/usr/bin/python3'
exec ansible-playbook -vv /home/ubuntu/baf/blockchain-automation-framework/examples/supplychain-app/configuration/deploy-supplychain-app.yaml --inventory-file=/home/ubuntu/baf/blockchain-automation-framework/platforms/shared/inventory/ -e "@/home/ubuntu/baf/blockchain-automation-framework/build/supplychain.yaml" -e 'ansible_python_interpreter=/usr/bin/python3'
