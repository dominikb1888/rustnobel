docker build -t rustnobel-postgres \
	--build-arg POSTGRES_USER=$POSTGRES_USER \
	--build-arg POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
	--build-arg POSTGRES_DB=$POSTGRES_DB \
	-f Dockerfile.db .

docker build -t rustnobel-app \
	-f Dockerfile.app .
