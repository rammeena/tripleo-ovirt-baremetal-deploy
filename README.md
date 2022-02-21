# tripleo-overcloud-deploy

## provision_nodes:

```
openstack overcloud node provision --stack overcloud --output ~/provision_nodes/overcloud-baremetal-deployed.yaml ~/provision_nodes/overcloud_baremetal_deploy.yaml
```

## unprovision_nodes:
```
openstack overcloud node unprovision --stack overcloud --all ~/provision_nodes/overcloud_baremetal_deploy.yaml
```

## provision_networks:

```
cp -v /usr/share/openstack-tripleo-heat-templates/network-data-samples/default-network-isolation.yaml custom_network_data.yaml

openstack overcloud network provision --output ~/provision_nodes/networks-deployed-environment.yaml custom_network_data.yaml
```
## provision_vip:

```  
openstack overcloud network vip provision --stack overcloud --output ~/provision_nodes/vip-deployed-environment.yaml custom_vip_data.yaml
```
## unprovision_networks:
```
openstack overcloud network unprovision ~/provision_nodes/custom_network_data.yaml

openstack overcloud deploy --templates -n custom_network_data.yaml -e overcloud-baremetal-deployed.yaml -e networks-deployed-environment.yaml -e vip-deployed-environment.yaml -e custom-net-multi-nic.yaml
```
# tripleo-ovirt-baremetal-deploy
