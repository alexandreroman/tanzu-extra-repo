# Tanzu Extra Package Repository

Welcome to the Tanzu Extra Package Repository!

This project is a curated list of [Carvel packages](https://carvel.dev/kapp-controller/docs/latest/packaging/)
for your Tanzu Kubernetes distribution.

**Please note this repository is not for production use**:
use these packages at your own risk.

## How to use it?

Run this command to connect your Tanzu Kubernetes distribution to this package repository:

```shell
tanzu package repository add tanzu-extra --namespace tanzu-package-repo-global --url ghcr.io/alexandreroman/tanzu-extra-repo:stable
```

After a few minutes, you should be able to list available packages:

```shell
tanzu package available list
/ Retrieving available packages...
  NAME                            DISPLAY-NAME  SHORT-DESCRIPTION
  metallb.extra.tanzu.vmware.com  MetalLB       A LoadBalancer implementation for Kubernetes
```

From this point, you can follow the
[standard procedure for installing packages](https://tanzucommunityedition.io/docs/latest/package-management/#installing-a-package).

Please refer to each package for documentation on configuration:

```shell
tanzu package available get metallb.extra.tanzu.vmware.com
/ Retrieving package details for metallb.extra.tanzu.vmware.com...
NAME:                 metallb.extra.tanzu.vmware.com
DISPLAY-NAME:         MetalLB
SHORT-DESCRIPTION:    A LoadBalancer implementation for Kubernetes
PACKAGE-PROVIDER:     Tanzu Extra Package Repository
LONG-DESCRIPTION:     A LoadBalancer implementation for Kubernetes
MAINTAINERS:          [{Alexandre Roman}]
SUPPORT:              Go to github.com/alexandreroman/metallb-tanzu-extra for documentation
CATEGORY:             [networking]
```

Enjoy!

## Contribute

Contributions are always welcome!

Feel free to open issues & send PR.

## License

Copyright &copy; 2021 [VMware, Inc. or its affiliates](https://vmware.com).

This project is licensed under the [Apache Software License version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
