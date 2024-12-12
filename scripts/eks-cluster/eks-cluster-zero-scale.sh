#!/bin/bash

# Create a EKS cluster
eksctl scale nodegroup --cluster hms-app-cluster \
  --name ng-1 \
  --region us-east-1 \
  --nodes=1 \
  --nodes-min=1 \
  --nodes-max=2 \