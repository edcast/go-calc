all: build

install:
	dep ensure

build: install build_linux build_darwin

build_linux:
	GOOS=linux go build -o ./go-calc main.go

build_darwin:
	mkdir -p ./build
	GOOS=darwin go build -o ./build/go-calc-darwin main.go

clean:
	rm -rf ./build

run_local:
	go run ./main.go

fmt:
	go fmt ./
