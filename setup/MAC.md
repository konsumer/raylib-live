# Setting up Raylib-Live on Mac

This has been tested on Sonoma, running on a Mac M1, but the basic idea is the same for others.


First install brew. It's a general tool that makes installing things much easier:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Now install tools:

```
brew install cmake emscripten ninja node npm
```

Now, go to [this repo](https://github.com/konsumer/raylib-live), and click the "use this template" button. It will make you a new repo, which you should use in commands below:

```sh
git clone https://github.com/konsumer/raylib-live.git
cd raylib-live
npm i
npm start
```