
FROM golang:1.18.8-alpine3.16

WORKDIR /app

COPY . /app
RUN apk update && apk add make
RUN make build_linux 
#RUN ./build/go-calc 

EXPOSE 8080

CMD [ "./build/go-calc" ]