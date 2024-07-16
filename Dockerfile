# Choose a package
FROM node:alpine

# Setup work directory
WORKDIR /app

# Copy all files to the working directory
COPY . .

# Install dependencies
RUN npm install

# Start the app
CMD [ "npm", "run", "start" ]
