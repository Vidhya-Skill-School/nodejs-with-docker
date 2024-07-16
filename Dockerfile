# Choose a package
FROM nodejs

# Setup work directory
WORKDIR /app

# Feel free to use /app or .
COPY  . .

# Install dependencies
RUN npm install

# Start the app
CMD [ "npm", "run", "start" ]