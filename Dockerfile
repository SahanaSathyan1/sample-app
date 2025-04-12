# Use an official Nginx image to serve the static content
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html (default directory for Nginx)
WORKDIR /usr/share/nginx/html

# Copy the contents of your project into the Nginx container
COPY . .

# Expose port 80 to access the app
EXPOSE 80

# Nginx will automatically serve files from the default directory
CMD ["nginx", "-g", "daemon off;"]

