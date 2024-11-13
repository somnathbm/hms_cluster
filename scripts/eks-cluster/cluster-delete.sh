#!/bin/bash
# This script will delete any existing cluster

eksctl delete cluster \
  --name hms-monitor-cluster \
  --region us-east-1