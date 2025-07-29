FROM nginx:alpine

# Remove the default Nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy built static files into Nginx web root
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
