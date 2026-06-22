FROM nginx:alpine

# Copy the project files to the default Nginx html directory
COPY . /usr/share/nginx/html/

# Rename frication.html to index.html so it serves automatically at the root URL
RUN mv /usr/share/nginx/html/frication.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
