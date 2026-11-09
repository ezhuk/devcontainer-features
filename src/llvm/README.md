# LLVM Development Container Feature

Installs an [LLVM](https://llvm.org) release from the official repository.

## Example Usage

```json
"features": {
  "ghcr.io/ezhuk/devcontainer-features/llvm:1": {
    "version": "23.1.5"
  }
}
```

## Options

| Option   | Type   | Default | Description             |
|----------|--------|---------|-------------------------|
| version  | string | 23.1.5  | LLVM version to install |
