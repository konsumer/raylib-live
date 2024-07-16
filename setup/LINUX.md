# Setting up Raylib-Live on Linux

This has been tested on Ubuntu Jammy, and will differ for other distros, but the basic idea is the same.


```sh
# update package database
sudo apt update

# install tools you will need
sudo apt install -y emscripten cmake ninja-build git npm
```

Ubuntu generally uses older versions of things, in apt, so you might want to install fresh ones, especially these:

- [node/npm](https://nodejs.org/en/download/package-manager)
- [emscripten](https://emscripten.org/docs/getting_started/downloads.html)

Now, go to [this repo](https://github.com/konsumer/raylib-live), and click the "use this template" button. It will make you a new repo, which you should use in commands below:

```sh
git clone https://github.com/konsumer/raylib-live.git
cd raylib-live
npm i
npm start
```