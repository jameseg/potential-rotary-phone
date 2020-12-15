docker run -it \
-v $PWD:/e2e \
-w /e2e \
--entrypoint cypress \
cypress/included:${VERSION} run --project . \
--config baseUrl=http://host.docker.internal:4200
