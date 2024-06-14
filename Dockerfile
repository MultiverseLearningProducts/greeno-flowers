# Base image to start from
FROM node:18

# Copy the application code into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Install Dependecies 
RUN npm Install

# Install required packages
CMD ["npm", "start"]

