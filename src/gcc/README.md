# GCC Development Container Feature

Installs a [GCC](https://gcc.gnu.org) release from [conda-forge](https://conda-forge.org) using [Micromamba](https://mamba.readthedocs.io).

## Example Usage

```json
"features": {
  "ghcr.io/ezhuk/devcontainer-features/gcc:1": {
    "version": "16.2.0"
  }
}
```

## Options

| Option   | Type   | Default | Description            |
|----------|--------|---------|------------------------|
| version  | string | 16.2.0  | GCC version to install |
