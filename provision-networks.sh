#!/bin/bash
openstack overcloud network provision \
--stack overcloud \
--output ~/tripleo-overcloud-deploy/environments/overcloud-provisioned-networks.yaml \
~/tripleo-overcloud-deploy/templates/custom_network_provision.yaml
