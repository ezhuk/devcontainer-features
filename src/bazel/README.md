# Bazel Development Container Feature

Installs a [Bazelisk](https://github.com/bazelbuild/bazelisk) release from the official repository.

## Example Usage

```json
"features": {
  "ghcr.io/ezhuk/devcontainer-features/bazel:1": {
    "version": "1.29.0"
  }
}
```

## Options

| Option   | Type   | Default | Description                 |
|----------|--------|---------|-----------------------------|
| version  | string | 1.29.0  | Bazelisk version to install |
