FROM nginx

COPY docker/entrypoint.sh /entrypoint.sh
COPY docker/nginx.conf /etc/nginx/nginx.conf

ADD _site /app

EXPOSE 5601

ENV ELASTICSEARCH_ADDRESS "//127.0.0.1:9200"

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
