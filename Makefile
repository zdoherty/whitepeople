build:
	GOOS=linux CGO_ENABLED=0 go build -o wp .

container: build
	docker build -t whitepeople .
