# Use a small, minimal base image for serving static files
FROM nginx:1.21

# Copy the built static files to the appropriate directory
COPY . /usr/share/nginx/html

# Expose port 80 to serve the application
EXPOSE 9000

# Default command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
