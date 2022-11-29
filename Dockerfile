FROM nginx:alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./cert.pem ./etc/ssl/cert.pem
COPY ./key.pem ./etc/ssl/key.pem

RUN nginx -t

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]