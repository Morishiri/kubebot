FROM golang:1.11

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.13.3/bin/linux/amd64/kubectl -O /usr/bin/kubectl && \
    chmod +x /usr/bin/kubectl

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

ADD . /go/src/app/

RUN go get "github.com/go-chat-bot/bot"

CMD ["app"]
