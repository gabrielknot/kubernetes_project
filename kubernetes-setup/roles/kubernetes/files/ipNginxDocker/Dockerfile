FROM alpine as html
ENV MY_POD_NAME="podname"
ENV MY_POD_NAMESPACE="podnamespace"
ENV MY_POD_IP="podip"
RUN mkdir html/
RUN echo "<h1>My pod name is: $MY_POD_NAME</h1><br></br><h1>My pod namespace is: $MY_POD_NAMESPACE</h1><br></br><h1>My pod namespace is: $MY_POD_NAMESPACE</h1>" >> /html/index.html
FROM nginx
COPY --from=html /html /usr/share/nginx/html
ENTRYPOINT ["/entryPoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
