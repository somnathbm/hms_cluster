# HMS cluster

a HMS (Hospital Management System) k8s cluster, running on EKS.

![HMS-EKS-Cluster](img/hms-eks-cluster.png)

## Components
The cluster consists of 7 services:

- patient-mgmt svc
- pos svc (patient onboarding)
- bed monitor svc
- emg svc
- ipd svc
- opd svc
- doctor svc

## Basic service map (on Cilium)
The 3 main services are laid out like this:

![HMS-Service-Map](img/hms_cilium_service_map.png)

## Service diagram on AWS

![HMS-cluster-only](img/hms-eks-cluster-only.png)

The services are meshed (for east-west traffic).
North-South traffic is managed by VPC Lattice service network via K8s Gateway API.
And the traffic is routed to the VPC via Route53.

## GitOps

GitOps is managed via Argo Rollouts and ArgoCD with Kargo for easier multi-stage promotion.