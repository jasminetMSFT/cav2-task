# Use an official base image (for example, Ubuntu or Alpine)
FROM ubuntu:latest

# Set up the Docker repository for Azure CLI
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/azure-cli.list

# Update the package list
RUN apt-get update

# Install the Azure CLI with the desired version
RUN apt-get install -y --allow-downgrades azure-cli=2.49.0-1~focal

# Set the working directory
WORKDIR /app

# Copy your script or commands into the container
COPY my_script.sh /app/

# Make your script executable (if needed)
RUN chmod +x /app/my_script.sh

# Define the entry point (the command to run when the container starts)
ENTRYPOINT ["/app/my_script.sh"]
