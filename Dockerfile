# Dockerfile for Nginx reverse proxy
FROM nginx:latest

# Remove default configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy SSL certificates
COPY cert.pem /etc/nginx/ssl/certificate.crt
COPY key.pem /etc/nginx/ssl/private.key

# Expose ports
EXPOSE 80
EXPOSE 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]