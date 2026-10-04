# CMake Development Container Feature

Installs a [CMake](https://github.com/kitware/cmake) release from the official repository.

## Example Usage

```json
"features": {
  "ghcr.io/ezhuk/devcontainer-features/cmake:1": {
    "version": "4.4.4"
  }
}
```

## Options

| Option   | Type   | Default | Description              |
|----------|--------|---------|--------------------------|
| version  | string | 4.4.4   | CMake version to install |
