#!/usr/bin/env bash
set -euo pipefail

IMAGE="${1:?image required}"

echo "Running container scan..."

trivy image --severity HIGH,CRITICAL "$IMAGE"
