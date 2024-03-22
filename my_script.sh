#!/bin/bash
echo "az login"
# Authenticate using managed identity
az login --identity --username 4e0b653b-19ce-4b84-8b5e-3eb5cd3e393b

ech "az account show"
# Show account information
az account show
