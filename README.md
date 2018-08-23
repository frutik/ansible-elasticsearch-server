Here you can find various (artificial - some of them nost probably will not work as is. work in progress) methods to install/configure Elasticsearch service

1. Ansible stuff (with Vargrant stuff to support development process). Provisioning of two elasticsearch clusters with slightly different configuration, both are behind nginx lb, one of the clusters sends monitoring stats into datadog.
2. Packer stuff to build image for Google Cloud Platform (provision with ansible - work still in progress, have to check provisioner, or replace it with the shell one)
3. Docker stuff to build an image and start with composer. (still in progress - real references to docker hub or other registries must be added)
