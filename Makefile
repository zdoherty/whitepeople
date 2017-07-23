build:
	GOOS=linux CGO_ENABLED=0 go build -o wp .

container: build
	docker build -t whitepeople .

push: container
	docker tag whitepeople gcr.io/isaqt-1130/whitepeople
	gcloud docker -- push gcr.io/isaqt-1130/whitepeople
