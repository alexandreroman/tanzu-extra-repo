#/usr/bin/env bash
mkdir -p generated/packages
mkdir -p generated/.imgpkg

ytt -f packages/metallb > generated/packages/metallb.yaml
ytt -f packages/kube-vip > generated/packages/kube-vip.yaml
ytt -f packages/tekton-pipelines > generated/packages/tekton-pipelines.yaml

kbld -f generated/packages --imgpkg-lock-output generated/.imgpkg/images.yml
