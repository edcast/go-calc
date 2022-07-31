FROM golang:1.16-alpine
WORKDIR /go/src/github.com/edcast/go-calc
COPY Makefile Gopkg.lock Gopkg.toml main.go ./
RUN apk update && apk add curl \
			  make \
			  git
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
RUN go mod init github.com/edcast/go-calc
RUN go mod tidy
RUN go mod vendor
#EXPOSE 8080
CMD make run_local

