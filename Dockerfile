FROM nginx:alpine
COPY . /usr/share/nginx/html/dahalan-website
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
