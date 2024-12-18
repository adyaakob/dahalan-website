FROM nginx:alpine
WORKDIR /app
COPY . .
RUN chmod +x build.sh && ./build.sh
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
