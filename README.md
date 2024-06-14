The purpose of this is to have a live-reloading C-based raylib setup, so you can work on your scene and see changes right away. You will need emscripten/ninja/cmake/nodejs installed, or docker.

It also has Github CI setup to auto-publish a demo site for quick-sharing of your project. [Here](https://konsumer.js.org/raylib-live) is an example.

```
# setup tools
npm i

# run the watching web-server, build on changes
npm start

# run the build/server in docker (less host tooling needed)
npm run start:docker

# make a native game
npm run build:native

# compile web-version
npm run build:web
```
