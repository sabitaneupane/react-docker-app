build:
	docker build -t reactdockerapp . 

run:
	docker build -t reactdockerapp .
	
	docker run -it -p 3000:3000 -v $(shell pwd):/app -v /app/node_modules reactdockerapp

run-local:
	yarn start 