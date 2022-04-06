# Copyright 2022 VMware. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

REQUIRED_BINARIES := imgpkg kbld ytt vendir
OCI_IMAGE := ghcr.io/alexandreroman/tanzu-extra-repo

clean:
	/bin/rm -rf generated

check-carvel:
	$(foreach exec,$(REQUIRED_BINARIES),\
		$(if $(shell which $(exec)),,$(error "'$(exec)' not found. Carvel toolset is required. See instructions at https://carvel.dev/#install")))

sync: check-carvel # Performs a `vendir sync` for packages.
	cd packages && vendir sync

build: check-carvel # Build package repository.
	./hack/build-repo.sh

push: check-carvel # Deploy package repository.
	imgpkg push --bundle $(OCI_IMAGE) --file generated
