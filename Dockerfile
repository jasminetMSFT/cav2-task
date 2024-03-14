# Use an official base image (for example, Ubuntu or Alpine)
FROM ubuntu:latest

# Add the Microsoft Linux Repo for Azure CLI
RUN apt-get update && apt-get install -y curl gnupg
RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/azure-cli.list

# Update the package list
RUN apt-get update

# Install the Azure CLI
RUN apt-get install -y azure-cli

# Set the working directory
WORKDIR /app

# Copy your script or commands into the container
COPY my_script.sh /app/

# Make your script executable (if needed)
RUN chmod +x /app/my_script.sh

# Define the entry point (the command to run when the container starts)
ENTRYPOINT ["/app/my_script.sh"]
