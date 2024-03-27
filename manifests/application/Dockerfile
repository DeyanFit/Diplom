FROM golang:alpine as exporter
RUN apk add --no-cache git
WORKDIR /app
RUN go mod init exporter
RUN go install github.com/nginxinc/nginx-prometheus-exporter@latest

FROM nginx:latest
COPY . /usr/share/nginx/html

COPY --from=exporter /go/bin/nginx-prometheus-exporter /usr/local/bin/

COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 80 9113

CMD ["/run.sh"]
