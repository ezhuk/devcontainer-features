# LLVM Development Container Feature

Installs an [LLVM](https://llvm.org) release from the official repository.

## Example Usage

```json
"features": {
  "ghcr.io/ezhuk/devcontainer-features/llvm:1": {
    "version": "22.1.6"
  }
}
```

## Options

| Option   | Type   | Default | Description             |
|----------|--------|---------|-------------------------|
| version  | string | 22.1.6  | LLVM version to install |
