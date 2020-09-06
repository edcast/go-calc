FROM golang
MAINTAINER Harsh Gulhane "harshgulhane@gmail.com"
# Checking golang updates and other software dependencies
RUN apt-get update \
    && apt-get install -y \
    golang
# Installing Git
RUN apt-get install -y git
# Clone git repository
RUN git clone https://github.com/edcast/go-calc.git
# A powerful HTTP router and URL matcher for building Go web servers
RUN go get -v -u github.com/gorilla/mux
# Set working directory inside container
WORKDIR /go/go-calc
#Exposing port 8080 outside the container
EXPOSE 8080
# Run local
CMD ["make","run_local"]
