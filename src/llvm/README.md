# LLVM Development Container Feature

Installs an [LLVM](https://llvm.org) release from the official repository.

## Example Usage

```json
"features": {
  "ghcr.io/ezhuk/devcontainer-features/llvm:1": {
    "version": "23.1.1"
  }
}
```

## Options

| Option   | Type   | Default | Description             |
|----------|--------|---------|-------------------------|
| version  | string | 23.1.1  | LLVM version to install |
