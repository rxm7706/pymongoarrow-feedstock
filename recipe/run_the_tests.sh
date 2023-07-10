#!/bin/bash
set -ex

podman run --name mongodb --detach mongo:6.0.2

# Remove the local copy of the source files
rm -rf pymongoarrow
pytest -v
