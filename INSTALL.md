# Install Guide

If you just want to play Red++, use one of the .ips patches as described in [README.md](README.md). To build a ROM yourself from the source code, follow these instructions.


## Windows

To build on Windows, install [**Cygwin**](http://cygwin.com/install.html) with the default settings.

In the installer, select the following packages: `git`, `python`, `make`, and `gcc-core`.

In the **Cygwin terminal**:

```bash
git clone https://github.com/TheFakeMateo/RedPlusPlus.git
cd RedPlusPlus
mkdir rgbds
```

Then download [**rgbds**](https://github.com/bentley/rgbds/). You'll need version 0.3.3 or later. Extract the archive and put all the .exe and .dll files in RedPlusPlus/rgbds.

To build **redplusplus.gbc**:

```bash
make
```

To build other versions:

```bash
make [debug]
```


## Linux

Python 2.7 is required.

```bash
sudo apt-get install make python gcc git bison

git clone https://github.com/rednex/rgbds.git
cd rgbds
sudo make install
cd ..

git clone https://github.com/TheFakeMateo/RedPlusPlus.git
cd RedPlusPlus
```

To build **redplusplus.gbc**:

```bash
make
```

To build other versions:

```bash
make [debug]
```


## Mac OS X

In **Terminal**, run:

```bash
xcode-select --install

git clone https://github.com/rednex/rgbds.git
cd rgbds
sudo make install
cd ..

git clone https://github.com/TheFakeMateo/RedPlusPlus.git
cd RedPlusPlus
```

To build **redplusplus.gbc**:

```bash
make
```

To build other versions:

```bash
make [debug]
```
