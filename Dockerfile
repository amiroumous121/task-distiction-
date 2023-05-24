# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies in the container
RUN npm install

# Copy the rest of the application to the working directory
COPY . .

# Make the container listen on port 8080
EXPOSE 8080

# Define the command to run the application
CMD [ "node", "amir.js" ]
