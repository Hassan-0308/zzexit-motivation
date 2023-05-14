# Use an existing base image
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install any necessary dependencies
RUN npm install

# Expose the port your application will run on
EXPOSE 8000

# Define the command that will run when the container starts
CMD sh -c "npm run test-jest && k6 run performance-testing/loginForm.js && k6 run performance-testing/loginRequest.js"
