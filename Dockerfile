## BUILDING
##   (from project root directory)
##   $ docker build -t mongodb-for-stackriot-nextjs-starter .
##
## RUNNING
##   $ docker run -p 27017:27017 mongodb-for-stackriot-nextjs-starter
##
## CONNECTING
##   Lookup the IP of your active docker host using:
##     $ docker-machine ip $(docker-machine active)
##   Connect to the container at DOCKER_IP:27017
##     replacing DOCKER_IP for the IP of your active docker host
##
## NOTES
##   This is a prebuilt version of MongoDB.
##   For more information and documentation visit:
##     https://github.com/bitnami/bitnami-docker-mongodb

FROM gcr.io/bitnami-containers/mongodb:3.6.0-r0

ENV STACKSMITH_STACK_ID="x4knpq0" \
    STACKSMITH_STACK_NAME="MongoDB for stackriot/nextjs-starter" \
    STACKSMITH_STACK_PRIVATE="1" \
    BITNAMI_CONTAINER_ORIGIN="stacksmith"

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Node base template
COPY . /app
WORKDIR /app

RUN npm install

CMD ["node"]
