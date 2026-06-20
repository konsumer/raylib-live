# basic setup for building raylib project in docker for web

# local build
# docker build --no-cache -t konsumer/raylib-live .

# run
# docker run --rm -it -p 8080:8080 -v .:/work konsumer/raylib-live

# setup builder
# docker buildx create --name multiarch-builder --driver docker-container --bootstrap
# docker buildx use multiarch-builder
# docker buildx inspect multiarch-builder

# build & publish
# docker buildx build --platform linux/amd64,linux/arm64 -t konsumer/raylib-live --push .

FROM emscripten/emsdk:latest

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /work

CMD ["npm", "start"]
# CMD ["bash"]