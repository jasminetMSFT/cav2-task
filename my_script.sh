#!/bin/bash

# Authenticate using managed identity
az login --identity

# Show account information
az account show
