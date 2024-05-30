# Use the official Alpine image from the Docker Hub
FROM alpine:latest

# Install necessary packages
RUN apk add --no-cache bash

# Set the working directory in the container
WORKDIR /app

# Copy the script into the container
COPY wisecow.sh .

# Give execution rights to the script
RUN chmod +x wisecow.sh

# Specify the command to run the script
CMD ["./wisecow.sh"]
