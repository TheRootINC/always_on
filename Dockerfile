# First stage: Run the traffmonetizer CLI.  This stage is temporary.
FROM traffmonetizer/cli_v2:latest as cli_stage

WORKDIR /cli_app

# Crucial: Use a shell command to start the CLI in the background.
CMD ["/bin/sh", "-c", "./Cli start accept --token igJkVVly33zoimmOOFqoXr8W6BNt/CL+RyB2jaqTfi8= &"]


# Second stage: The Node.js application stage.
FROM node:18-alpine as app_stage

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Crucial: Use a shell command that ensures the CLI is already running,
# then start the Node.js app, and expose port 8080.
CMD ["/bin/sh", "-c", "sleep 5 && node index.js"]

#Expose the port 8080 in the second stage
EXPOSE 8080
