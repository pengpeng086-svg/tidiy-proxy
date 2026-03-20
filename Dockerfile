FROM nginx:alpine

# 反向代理到 tidiy.net
RUN echo 'server { \
  listen 80; \
  location / { \
    proxy_pass https://tidiy.net; \
    proxy_set_header Host tidiy.net; \
    proxy_set_header X-Real-IP $remote_addr; \
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for; \
    proxy_set_header X-Forwarded-Proto $scheme; \
    proxy_ssl_server_name on; \
    proxy_connect_timeout 90s; \
    proxy_send_timeout 90s; \
    proxy_read_timeout 90s; \
  } \
}' > /etc/nginx/conf.d/default.conf
