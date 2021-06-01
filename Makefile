docker-build:
	docker build -t kinetik/gatus:latest .

docker-build-linux:
	docker buildx build --platform linux/amd64 -t kinetik/gatus:latest .

docker-build-and-run:
	docker build -t kinetik/gatus:latest . && docker run -p 8080:8080 --name gatus kinetik/gatus:latest

build-frontend:
	npm --prefix web/app run build

run-frontend:
	npm --prefix web/app run serve

test:
	go test ./alerting/... ./client/... ./config/... ./controller/... ./core/... ./jsonpath/... ./pattern/... ./security/... ./storage/... ./util/... ./watchdog/... -cover