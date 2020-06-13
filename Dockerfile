FROM golang:alpine
RUN apk add make curl
RUN mkdir -p /usr/local/go/src/go-calc
WORKDIR /usr/local/go/src/go-calc
ADD . /usr/local/go/src/go-calc
RUN mv vendor/github.com /usr/local/go/src/vendor
RUN make build_linux
CMD ./build/go-calc
