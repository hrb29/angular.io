# Use Ubuntu as the base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Install Node.js and npm
RUN apt-get update && apt-get install -y nodejs npm

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Copy the local Angular project to the container's working directory
COPY . .

# Install project dependencies
RUN npm install

# Expose the port used by the Angular application (usually 4200)
EXPOSE 4200

# Command to start the Angular application
CMD ["ng", "serve", "--host", "0.0.0.0"]
