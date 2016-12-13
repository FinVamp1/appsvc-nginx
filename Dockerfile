FROM nginx

ADD default.conf /etc/nginx/conf.d/default.conf

RUN rm -rf /usr/share/nginx/html && \
    rm -rf /var/log/nginx && \
    ln -s /home/site/wwwroot /usr/share/nginx/html && \
    ln -s /home/LogFiles /var/log/nginx
