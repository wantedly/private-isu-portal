FROM nginx:1.13.0

COPY dist/bundle.js /usr/share/nginx/html/bundle.js
COPY dist/index.html /usr/share/nginx/html/index.html

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
