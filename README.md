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

![HMS-cluster-only](img/hms-eks-cluster-only.png)

The services are meshed (for east-west traffic).
North-South traffic is managed by VPC Lattice service network via K8s Gateway API.
And the traffic is routed to the VPC via Route53.

## GitOps

GitOps is managed via ArgoRollouts and ArgoCD.