Here you can find various (artificial - some of them nost probably will not work as is. work in progress) methods to install/configure Elasticsearch service

*Old good ansible*

Ansible stuff (with Vargrant stuff to support development process). Provisioning of two elasticsearch clusters with slightly different configuration, both are behind nginx lb, one of the clusters sends monitoring stats into datadog.

*Packer + GCP*

Packer stuff to build image for Google Cloud Platform (provision with ansible - work still in progress, have to check provisioner, or replace it with the shell one)

```
packer build gcp-elasticsearch-image.json
```

*Docker + composer + docker hub/GCP registry*

Docker stuff to build an image and start container with composer. (still in progress - real references to docker hub or other registries must be added)

```
docker build -t es_node . -f Dockerfile.es
docker tag es_node eu.gcr.io/my-project/es_node
docker push  eu.gcr.io/my-project/es_node
```

Do the same for dd

Fasten your seatbelts we ready take off

```
docker-compose up
```
