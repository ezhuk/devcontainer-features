## Development Container Features

[![test](https://github.com/ezhuk/devcontainer-features/actions/workflows/test.yml/badge.svg)](https://github.com/ezhuk/devcontainer-features/actions/workflows/test.yml)
[![prod](https://github.com/ezhuk/devcontainer-features/actions/workflows/prod.yml/badge.svg)](https://github.com/ezhuk/devcontainer-features/actions/workflows/prod.yml)

A collection of reusable [Development Container Features](https://containers.dev/implementors/features/) that install and configure common development tools in a container to help create consistent environments and reproducible builds.

## Usage

Add one or more features to your `devcontainer.json`:

```json
{
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu-24.04",
  "features": {
    "ghcr.io/ezhuk/devcontainer-features/cmake:1": {
      "version": "4.3.1"
    },
    "ghcr.io/ezhuk/devcontainer-features/ninja:1": {}
  }
}
```

## Features

The collection includes the following features:

- [bazel](https://github.com/ezhuk/devcontainer-features/tree/main/src/bazel) - Installs `Bazel` build system.
- [cmake](https://github.com/ezhuk/devcontainer-features/tree/main/src/cmake) - Installs `CMake` build system.
- [ninja](https://github.com/ezhuk/devcontainer-features/tree/main/src/ninja) - Installs `Ninja` build system.
- [node](https://github.com/ezhuk/devcontainer-features/tree/main/src/node) - Installs `Node.js` runtime environment.
- [uv](https://github.com/ezhuk/devcontainer-features/tree/main/src/uv) - Installs `uv` package and project manager.
- [vcpkg](https://github.com/ezhuk/devcontainer-features/tree/main/src/vcpkg) - Installs and bootstraps `vcpkg` package manager.

## License

The features are licensed under the [MIT License](https://github.com/ezhuk/devcontainer-features?tab=MIT-1-ov-file).
