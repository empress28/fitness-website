FROM nginx:alpine

# Remove the default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy your static files
COPY . /usr/share/nginx/html

# Copy the custom Nginx config
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
