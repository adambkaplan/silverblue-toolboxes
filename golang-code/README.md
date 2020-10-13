# golang-code

Toolbox container to run VSCode with golang SDKs installed.

## Why not use the flatpak?

To use the Go extensions with VSCode in a flatpak, VSCode needs to be launced with freedesktop SDK
extensions enabled. This can be challenging if you wish to upgrade golang or enable other languages
not supported by freedesktop SDKs.

## Known additional packages

VSCode requires the following packages which are not included in the f32 toolbox image:

- libdrm 
- libgbm
- libX11-xcb
