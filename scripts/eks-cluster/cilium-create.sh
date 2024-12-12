kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.2.0/standard-install.yaml
kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.2.0/experimental-install.yaml

helm repo add cilium https://helm.cilium.io/

helm install cilium cilium/cilium --version 1.16.4 \
  --namespace kube-system \
  --set cni.chainingMode=aws-cni \
  --set cni.exclusive=false \
  --set kubeProxyReplacement=true \
  --set enableIPv4Masquerade=false \
  --set routingMode=native \
  --set endpointRoutes.enabled=true \
  --set gatewayAPI.enabled=true \
  --set hubble.relay.enabled=true \
  --set hubble.ui.enabled=true


helm install cilium cilium/cilium --version 1.16.4 \
   --namespace kube-system \
   --set ipam.mode=kubernetes \
   --set gatewayAPI.enabled=true \
   --set hubble.relay.enabled=true \
   --set hubble.ui.enabled=true

helm install cilium cilium/cilium --version 1.16.4 \
  --namespace kube-system \
  --set eni.enabled=true \
  --set ipam.mode=eni \
  --set egressMasqueradeInterfaces=eth0 \
  --set routingMode=native \
  --set gatewayAPI.enabled=true \
  --set hubble.relay.enabled=true \
  --set hubble.ui.enabled=true