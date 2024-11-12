FROM traffmonetizer/cli_v2:latest

# Expose port 8080
EXPOSE 8080

# Define a command to run the web app
CMD ["/bin/sh", "-c", "/Cli start accept --token igJkVVly33zoimmOOFqoXr8W6BNt/CL+RyB2jaqTfi8= &"]
