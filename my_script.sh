#!/bin/bash
echo "az login"
# Authenticate using managed identity
az login --identity --username 7c74ceb5-652b-4bbc-8ed5-69ac97340a9c

ech "az account show"
# Show account information
az account show
