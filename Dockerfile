# Use Nginx to serve the pre-built React app
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy the pre-built dist folder from Jenkins workspace into the Nginx web root
COPY dist/ .

# Replace the default Nginx config with your custom one
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the HTTP port
EXPOSE 80

# Start Nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]
