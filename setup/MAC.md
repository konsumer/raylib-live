# Setting up Raylib-Live on Mac

This has been tested on Sonoma, running on a Mac M1, but the basic idea is the same for others.


First install brew. It's a general tool that makes installing things much easier:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Now install tools:

```
brew install cmake emscripten node npm
```

Now, go to [this repo](https://github.com/konsumer/raylib-live), and click the "use this template" button. It will make you a new repo, which you should use in commands below:

```sh
git clone https://github.com/konsumer/raylib-live.git
cd raylib-live

# setup tools
npm i

# run the watching web-server, build on changes
npm start

# make a native game, run with ./build/my_raylib_game
npm run build:native

# compile web-version
npm run build:web
```