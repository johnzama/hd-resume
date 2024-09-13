# Use the official Node.js LTS version as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 8090 to allow external access
EXPOSE 8090

# Define the command to run the application
CMD ["npm", "start"]

