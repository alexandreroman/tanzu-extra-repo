#/usr/bin/env bash
mkdir -p generated/packages
mkdir -p generated/.imgpkg

ytt -f packages/metallb > generated/packages/metallb.yaml

kbld -f generated/packages --imgpkg-lock-output generated/.imgpkg/images.yml
