#!/bin/bash
rm -rf .terraform terraform.tfstate*
docker rm -f mr_container mr_ubuntu
