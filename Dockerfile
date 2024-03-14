FROM mcr.microsoft.com/azure-cli

# Set the working directory
WORKDIR /app

# Copy your script or commands into the container
COPY my_script.sh /app/

# Make your script executable (if needed)
RUN chmod +x /app/my_script.sh

# Define the entry point (the command to run when the container starts)
ENTRYPOINT ["/app/my_script.sh"]
