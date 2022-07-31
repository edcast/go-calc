FROM golang:1.16-alpine
WORKDIR /go/src/github.com/edcast/go-calc
RUN go env
RUN pwd
RUN ls
COPY Makefile Gopkg.lock Gopkg.toml main.go ./
RUN apk update && apk add curl \
			  make \
			  git
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
RUN go mod init github.com/edcast/go-calc
RUN go mod tidy
#RUN go get -u github.com/gorilla/mux
RUN go mod vendor
EXPOSE 8080
#RUN go build
#RUN ls
#CMD make build ./build/go-calc
#CMD ./go-calc
CMD make run_local
#RUN go build 
#ENTRYPOINT ["./go-calc"]

