FROM golang:1.11.1-alpine

RUN apk add ca-certificates git

ENV APPPATH $GOPATH/src/github.com/percona/mongodb_exporter
WORKDIR $APPPATH

RUN git clone -b v0.6.2 "https://github.com/percona/mongodb_exporter" "$APPPATH" \
    && go get -d && go build -o /bin/mongodb_exporter \
    && rm -rf "$GOPATH"

EXPOSE 9216

ENTRYPOINT [ "/bin/mongodb_exporter" ]
