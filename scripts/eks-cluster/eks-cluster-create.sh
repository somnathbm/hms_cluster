#!/bin/bash

# Create a EKS cluster
eksctl create cluster --name hms-cluster-dev \
  --version "1.31" \
  --region us-east-1 \
  --zones=us-east-1a,us-east-1b \
  --nodes=2 \
  --nodes-min=2 \
  --nodes-max=3 \
  --instance-types=t3a.small