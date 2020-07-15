FROM golang:latest
RUN go get -v -u github.com/gorilla/mux
RUN apt-get update \
    && apt-get install -y \
    golang

# Set the Current Working Directory inside the container
WORKDIR /app/go-cal-app

COPY . /app/go-cal-app

# Build the Go app
RUN go build -o gocalpage

# This container exposes port 8080 to the outside world
EXPOSE 8080

# Run the binary program produced by `go install`
CMD ["./gocalpage"]
