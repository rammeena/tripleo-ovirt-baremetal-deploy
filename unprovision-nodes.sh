#!/bin/bash
openstack overcloud node unprovision \
--stack ceph \
--all \
~/tripleo-ovirt-baremetal-deploy/templates/overcloud_node_provision.yaml
