# Setting up Raylib-Live on Windows
This has been tested on Windows 11, but should be the same for Windows 10\
It looks like a lot of steps, and most of these components may already exist on your system, though it's best to be sure and check each one.
(Unless you're using the Docker version, then you just need Docker)

**Abbreviated instructions for more advanced users** \
*You'll want to make sure Git, Python, Node/Npm, Cmake and Ninja are installed, as well as a C compiler.\
Then clone emsdk and Raylib-Live and follow their setup instructions, in that order.\
Emsdk has a few more dependencies but it sorts those out by itself, as does Raylib-Live.*

## Git
You need the git CLI installed so that emsdk can install other dependencies automatically.\
In theory it should install it's own version, but it seems to require git to do that :upside_down_face:	\
Check to see if you have it by going to the command line† and entering ```git --version``` - it needs to be greater than 1.6.5\
If it doesn't recognise that then either it isn't installed or there's not a PATH variable* pointing to the folder containing git.exe\
To install go here: https://www.git-scm.com/download/win and download and install the windows portable version.\
Make sure the cmd folder from that install is set in your PATH environment variables*\
*Note also that the github CLI (gh.exe), or github desktop probably wont work.\
They're fine for manually cloning emsdk and Raylib-Live, but not for the automated git parts of the process.*

## Python
You will need python 3.6 or higher for emsdk to do it's automatic dependency update as well. \
Like Git, emsdk installs it's own version, but it still needs one to be installed first :upside_down_face: \
Check to see if you have it by going to the command line† and entering ```py --version```
If not go here and download the right installer for your system: https://www.python.org/downloads/windows/
(If in doubt it will be the 64 bit version. It should set the PATH variable* for you)

## Emsdk - The Emscripten SDK
You will need to start by cloning the emsdk repo.
You can go here https://github.com/emscripten-core/emsdk and click on the green code button to either download a zip of the repo or dwonload in github desktop.
Or start with the command line and ```git clone https://github.com/emscripten-core/emsdk.git```
After that you will need to do the following to complete the installation (the emsdk repo is only part of the sdk)
1. If not already there, navigate to the directory with the command line ```cd emsdk```
2. Then ```emsdk install latest``` to complete the installation, this may (and should) take a while.
3. Then ```emsdk activate latest``` to activate the various components of the sdk, which will create a few more config files.
4. Then ```emsdk_env.bat``` to add some permanent, final PATH variables*

## Node/NPM
Emsdk should have installed Node for you at this point, but you want to make sure this and NPM are installed.\
Enter ```node -v``` to check Node is installed.\
Enter ```npm -v``` to check NPM is installed.\
Go here: https://nodejs.org/en/download/prebuilt-installer to install Node and NPM

## C Compiler
You very likely have one of these already installed with Raylib, and you will need one for native builds.\
See if GCC is available by entering ```gcc -v``` at the command line.\
If it's not, go to https://winlibs.com/ scroll down to releases and pick the first 64 or 32 bit zip or 7z.\
Unpack it to a directory, and make sure you have a PATH* set to the bin folder

## Ninja
This is one you're less likely to have.\
Try ```ninja --version``` at the command line.\
If you don't have it, go here: https://ninja-build.org/ and click on the download link and select a windows installer.\
You will need to make sure the ninja.exe is unpacked to a suitable place and that you have a PATH variable* pointing to it.

## CMake
You'll likely know if you have Cmake installed and are already using it.\
If not, go here: https://cmake.org/download/ and select the correct installer from the binary distributions and install.

## Raylib-Live
Now hopefully everything will be in place for this to work.\
Clone the repo the same way you did with emsdk: https://github.com/konsumer/raylib-live \
Then in the console navigate to the directory and do ```npm run build:web``` to continue with the installation.\
Then you'll probably want to do ```npm i``` for some final setting up.\
And to get it running: ```npm start```\
(You also have ```npm run build:native``` for an executable.)\
You'll find a basic example - ```main.c``` in the src folder, which will be compiled and the output displayed in your browser.

----
### * PATH variables
*For a lot of installed components, it's not always enough to install them, automated build systems will only find them if their executable is on a path set in your system's PATH environment variables.\
On Windows 10, Right-click on 'This PC' or 'Computer', Select 'Properties.' Click on 'Advanced system settings.'\
(On Windows 11, Right-click on 'Start' then 'System', then Click on 'Advanced system settings.')
Then on that dialogue - hit the button at the bottom that says 'Environment Variables'\
Then you're given two boxes, 'User Variables' and 'System Variables'. System is probably best. Find and select the 'Path' entry and click Edit.\
The you'll see a list of all the Paths currently set. Click 'New' to add another.
Only the path is required, not the actual file name.*

### † Command line
*Windows 11 may default to giving you the powershell console, or Windows 10 a normal command line as a regular user.
Both of these may work, but if you have any issues, it's best to run the regular command line as administrator.
Go to the start menu or windows-S and type 'cmd', then right click on the command line icon and select 'run as administrator'*
