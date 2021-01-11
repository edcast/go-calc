#Base image
FROM golang:1.15.6 AS build

#Cloning the codebase
RUN git clone https://github.com/ujjwalabhivns/go-calc

#Setting working directory
WORKDIR $GOPATH/go-calc

#Getting packages
RUN  go get -v -u github.com/gorilla/mux

#Building
RUN CGO_ENABLED=0
RUN go build .

EXPOSE 8080

#Running the exe file
CMD ["./go-calc"]
