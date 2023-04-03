# Use an official lightweight Node.js image as a parent image
FROM node:alpine
# Install a simple HTTP server to serve the static files
RUN npm install -g http-server

# Expose the port the server will run on
EXPOSE 8080

# Set the working directory
WORKDIR /usr/src/app

# Copy the `index.html` file into the container
COPY . .



# Start the server
CMD ["http-server", "-p", "8080"]
