Here you can find various methods to install/configure Elasticsearch service

1. Ansible stuff (with Vargrant stuff to support development process)
2. Packer stuff to build image for Google Cloud Platform (provision with ansible - work still in progress)
3. Docker stuff to build an image and start with composer

Artificial example of an ansible stuff which provisions two elasticsearch clusters with slightly different configuration,
both are behind nginx lb, one of the clusters send monitoring stats into datadog.

example of the packer & docker stuff still in progress.
