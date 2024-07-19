The purpose of this is to have a live-reloading C-based raylib setup, so you can work on your scene and see changes right away. You will need emscripten/ninja/cmake/nodejs installed, or docker. You can find help install all this in [WINDOWS](setup/WINDOWS.md), [LINUX](setup/LINUX.md) or [MAC](setup/MAC.md).

It also has Github CI setup to auto-publish a demo site for quick-sharing of your project. [Here](https://konsumer.js.org/raylib-live) is an example.

```
# setup tools
npm i

# run the watching web-server, build on changes
npm start

# run the build/server in docker (less host-tooling needed)
npm run start:docker

# make a native game, run with ./build/my_raylib_game
npm run build:native

# compile web-version
npm run build:web
```

Put any files in `src/assets` and access them in your code with that path (like `src/assets/image.png`) and it will work in native or wasm -build.