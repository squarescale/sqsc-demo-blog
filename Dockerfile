FROM klakegg/hugo:0.74.3-onbuild AS hugo

FROM nginx
COPY --from=hugo /target /usr/share/nginx/html
