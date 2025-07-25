# Use a minimal, secure Nginx image
FROM nginx:stable-alpine

# Remove default HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static HTML to the web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 8080

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
