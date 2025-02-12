# Use an official Nginx image as a base image
FROM nginx:alpine

# Copy the local files to the container
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./css /usr/share/nginx/html/css
COPY ./images /usr/share/nginx/html/images

# Expose port 80 to access the web application
EXPOSE 80

# Run the nginx service
CMD ["nginx", "-g", "daemon off;"]
