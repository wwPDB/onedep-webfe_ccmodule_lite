FROM nginx:latest

WORKDIR /app
COPY . .

# move the default html folder out of the way
RUN mv /usr/share/nginx/html /usr/share/nginx/html_safe

# link the app to nginx folder
RUN ln -s /app/webapps/htdocs /usr/share/nginx/html

# setup aliases
RUN ln -s /app/nginx/config.conf /etc/nginx/conf.d/
