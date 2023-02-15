# Use official nodejs image as the base image
FROM node:latest

# Set working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app
RUN npm run build

# Expose port 80
EXPOSE 80

# Start the server
CMD ["npm", "start"]
