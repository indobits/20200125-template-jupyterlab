run:
	docker build . -f Dockerfile -t dsrp/20200125-jupyterlab:1.0
	docker run \
		-it \
		--rm \
		--cpus ${cpus} \
		--cpu-shares 1024 \
		--memory ${memory} \
		-v $(PWD):/app:rw \
		-p 8888:8888 \
		dsrp/20200125-jupyterlab:1.0
