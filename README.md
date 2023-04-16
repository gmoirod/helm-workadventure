# Helm Chart to deploy Workadventure

This is a Helm Chart to deploy [WorkAdventure](https://github.com/thecodingmachine/workadventure) in version 1.15+.

Mainly inspired by https://github.com/thecodingmachine/workadventure/tree/develop/contrib/docker

## Prerequisites

### K8S

Get a K8S cluster. For example see https://minikube.sigs.k8s.io/docs/start/

### Helm 3+

Get Helm : https://helm.sh/docs/intro/install/

## Install

1. Clone the repo
2. Install workadventure in tag defined in [Chart](./Chart.yaml) :
```
helm install myrelease .
```
3. Wait a few seconds for all pods to start
4. With self-signed TLS certificates, make them trust by your browser by going to https://chat.workadventure.minikube/, https://icon.workadventure.minikube/, https://map-storage.workadventure.minikube/, https://ejabberd.workadventure.minikube/
5. Then you can start by going to https://play.workadventure.minikube/

You can also start another universe with another map. For example : https://play.workadventure.minikube/_/anyuniverse/thecodingmachine.github.io/workadventure-map-forumphp/map.json

### Install workadventure with a specific domain
```
helm install myrelease . --set domain=mydomain.com
```

It will then be available at https://play.mydomain.com/_/global/maps.mydomain.com/Floor0/floor0.json

## Dependencies

- [Bitnami Redis](https://artifacthub.io/packages/helm/bitnami/redis)

## Customise

You can override any values defined [values.yaml](./values.yaml). Read Helm doc to know how.

## TODO

[ ] Give a way to use Cloud LoadBalancers by allowing to use NodePort and Loadbalancer services

[ ] Depend from cert-manager to automate TLS acquisition

[ ] Enhance templating options (workadventure version)

[ ] Depend from Jitsi Helm to get full self-hosting

[ ] CI/CD this Chart
