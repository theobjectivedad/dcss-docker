
build:
	docker build . -t dcss:latest

run:
	docker run -it --rm -v dcss:/home/crawl dcss:latest

cli:
	docker run -it --rm -v dcss:/home/crawl dcss:latest /bin/bash