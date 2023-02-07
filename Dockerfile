FROM nginx:1.18.0

RUN ln -sf /usr/share/zoneinfo/Asia/Hong_Kong /etc/localtime
RUN echo "Asia/Hong_Kong" > /etc/timezoneset -eux

COPY /dist /usr/share/nginx/html

EXPOSE 80

ENTRYPOINT nginx -g "daemon off;"