FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY . /usr/share/nginx/html/dahalan-website
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Make sure nginx can access the files
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
