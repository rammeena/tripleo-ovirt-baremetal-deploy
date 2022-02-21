#!/bin/bash
openstack overcloud node unprovision \
--stack ceph \
--all \
~/tripleo-ceph-deploy/templates/overcloud_node_provision.yaml
