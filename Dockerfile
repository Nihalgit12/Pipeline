FROM nginx
COPY . /usr/share/nginx/html
PORTS: 
"80:80"
