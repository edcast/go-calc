FROM golang:1.10.4
RUN go get -u github.com/golang/dep/cmd/dep \
&& go get -v github.com/gorilla/mux \
&& mkdir /go/src/app
ADD . /go/src/app
WORKDIR /go/src/app
RUN make build
EXPOSE 8080
CMD ["/go/src/app/build/go-calc"]