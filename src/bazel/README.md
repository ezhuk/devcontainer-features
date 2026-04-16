# Bazel Dev Container Feature

Installs a Bazelisk release from the official repository.

## Example Usage

```json
"features": {
  "ghcr.io/ezhuk/devcontainer-features/bazel:1": {
    "version": "1.28.1"
  }
}
```

## Options

| Option   | Type   | Default | Description                 |
|----------|--------|---------|-----------------------------|
| version  | string | 1.28.1  | Bazelisk version to install |
