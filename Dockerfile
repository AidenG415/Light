# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Clone the repository
RUN apk add --no-cache git && \
    git clone https://github.com/LightUnblocker/Light.git . 

# Install dependencies
RUN npm install

# Expose the default port (adjust if necessary)
EXPOSE 8080

# Command to run the application
CMD ["npm", "start"]
