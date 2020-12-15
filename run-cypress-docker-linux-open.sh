docker run -it \
	-v $PWD:/e2e \
	-w /e2e \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=host.docker.internal:0.0 \
	--entrypoint cypress \
	cypress/included:${VERSION} open --project . \
	--config baseUrl=http://host.docker.internal:4200
