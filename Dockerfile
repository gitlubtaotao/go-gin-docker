FROM golang:latest
ENV GOPROXY https://goproxy.cn,direct

WORKDIR $GOPATH/src/app

ADD . $GOPATH/src/app

RUN go build main.go

EXPOSE 8081

CMD ["./main"]
