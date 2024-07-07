# Use a small, minimal base image for serving static files
FROM nginx:1.21

# Copy the built static files to the appropriate directory
COPY ./To-do-app /usr/share/nginx/html

# Expose port 80 to serve the application
EXPOSE 80

# Default command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
