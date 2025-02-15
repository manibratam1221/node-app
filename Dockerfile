# Use Node.js base image
FROM --platform=linux/amd64 node:11.15

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port that the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
