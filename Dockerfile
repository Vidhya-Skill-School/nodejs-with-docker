# Use the official Node.js image as the base image
FROM node:alpine

# Setup work directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files to the working directory
COPY . .

# Exposing a port
EXPOSE 3000

# Start the app with nodemon
CMD [ "npm","run", "start" ]
