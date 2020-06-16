#!/bin/bash -e

HACK_DIR=$(dirname "${BASH_SOURCE[0]}")
REPO_ROOT="${HACK_DIR}/.."

"${REPO_ROOT}/vendor/k8s.io/code-generator/generate-groups.sh" \
  all \
  github.com/cuijxin/k8scrds/pkg/generated \
  github.com/cuijxin/k8scrds/pkg/apis \
  k8scrds:v1 \
  --go-header-file hack/boilerplate/boilerplate.go.txt \
  "$@"