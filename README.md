The purpose of this is to have a live-reloading C-based raylib setup, so you can work on your scene and see changes right away. 

It also has Github CI setup to auto-publish a demo site for quick-sharing of your project. [Here](https://konsumer.js.org/raylib-live) is an example.

Put any files in `src/assets` and access them in your code with that path (like `src/assets/image.png`) and it will work in native or wasm-build.

If you install [docker](https://docs.docker.com/desktop/), it's easy to get started:

```sh
docker run --rm -it -p 8080:8080 -v .:/work konsumer/raylib-live
```

And you can open `http://localhost:8080`

If you don't want to use docker, you can read [WINDOWS](setup/WINDOWS.md), [LINUX](setup/LINUX.md) or [MAC](setup/MAC.md) to set up all the tools, locally.