FROM golang

COPY . /go-calc 

RUN mv /go-calc/vendor/* /go/src/ && \
    cd /go-calc && make build_linux && \
    mv go-calc /go/src/

ENTRYPOINT /go/src/go-calc
