# Use Node.js as a base image
FROM node:16 AS builder

# Set the working directory
WORKDIR /app


# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install --force

# Copy the rest of the application code
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME my-angular-app

# Run app when the container launches
CMD ["npm", "start"]
