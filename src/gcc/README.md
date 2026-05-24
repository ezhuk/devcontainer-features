# GCC Development Container Feature

Installs a [GCC](https://gcc.gnu.org) release from [xPack](https://xpack-dev-tools.github.io/gcc-xpack/).

## Example Usage

```json
"features": {
  "ghcr.io/ezhuk/devcontainer-features/gcc:1": {
    "version": "15.2.0-1"
  }
}
```

## Options

| Option   | Type   | Default  | Description            |
|----------|--------|----------|------------------------|
| version  | string | 15.2.0-1 | GCC version to install |
