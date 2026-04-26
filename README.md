# DARTS 

A simple **C++** and **OpenGL** arcade-style space game inspired by classic asteroid shooters. The player controls a triangular ship and navigates a minimalist space environment focused on fast movement, survival, and tight controls.

The project emphasizes lightweight rendering, responsive gameplay, and a clean arcade feel.

# Getting Started

## Requirements

This project currently supports **Linux only (tested with GCC toolchain)**.

Make sure you have:

* `g++` (GCC compiler)
* `make`
* `premake5`
* `gdb`

### Ubuntu / Debian install:

#### 1. Update your package list

Open a terminal and run:

```bash
sudo apt update
```

#### 2. Install g++, make, and gdb

These are all available directly from the default repositories:

```bash
sudo apt install build-essential gdb
```

* `build-essential` includes:

  * **g++ (GCC compiler)**
  * **make**
  * other essential build tools


#### 3. Install premake5

Download it manually from the official site: https://premake.github.io/download/

Then run:

```bash
# Go to your Downloads folder (or wherever the file was saved)
cd ~/Downloads

# Extract the archive (adjust filename if needed)
tar -xvf premake5-*.tar.gz

# Ensure the binary is executable
chmod +x premake5

# Move it to a directory in your PATH
sudo mv premake5 /usr/local/bin/
```


#### 4. Verify installations

Check everything is installed correctly:

```bash
g++ --version
make --version
premake5 --version
gdb --version
```

## Clone the repository

```bash
git clone https://github.com/auilk/darts.git
cd darts
```

## Generate build files

```bash
premake5 gmake2
```

## Build the project

### Debug build

```bash
make config=debug
```

### Release build

```bash
make config=release
```

## Run the game

### Debug

```bash
./build/bin/Debug/Darts
```

### Release

```bash
./build/bin/Release/Darts
```

# VSCode Workflow (Recommended)

This project includes a preconfigured **`.vscode/` setup** for building and debugging.

It provides:

* Build tasks (Debug / Release)
* Run tasks
* GDB debugging (F5)

## Open in VSCode

```bash
cd path/to/project/folder
code .
```

Make sure you open the **project root folder**.


## Build using VSCode

```text
Ctrl + Shift + B
```

Or:

```text
Ctrl + Shift + P → Tasks: Run Task
```

Then select:

* Build Debug
* Build Release

---

## Run using VSCode

```text id="r13"
Ctrl + Shift + P → Tasks: Run Debug
```

Then select:

* Run Debug
* Run Release

## Debugging (GDB)

Press:

```text"
F5
```

This will:

1. Build Debug automatically
2. Launch GDB
3. Enable breakpoints, stepping, and inspection

## Features

- Classic asteroid-style arcade gameplay
- Real-time collision detection
- Simple projectile and movement system
- Lightweight **OpenGL** rendering pipeline
- Particle system for explosions and effects
- Minimal **UI** (score, lives, basic HUD)
- Basic visual feedback (screen shake, hit effects)

## Controls

- **WASD** → Move ship
- **Space** / **K** → Shoot
- **J** → Dash

## Platform Support

- Linux (currently supported)
- Windows (planned)

## Learning Goals

This project is intended to explore:

- Windowing and input handling with **GLFW**
- Game loop design
- Collision detection and simple physics systems
- Clean and minimal **C++** architecture
- Tooling workflow using **Premake** + **GCC** + **GDB**

## License

This project is licensed under the **MIT** License.
See the [LICENSE](LICENSE) file for more details.