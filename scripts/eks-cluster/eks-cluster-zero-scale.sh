#!/bin/bash

# Create a EKS cluster
eksctl scale nodegroup --cluster hms-monitor-cluster \
  --name ng-7ccb0872 \
  --region us-east-1 \
  --nodes=0 \
  --nodes-min=0 \
  --nodes-max=1 \