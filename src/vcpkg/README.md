# vcpkg Development Container Feature

Installs a [vcpkg](https://github.com/microsoft/vcpkg) release from the official repository.

## Example Usage

```json
"features": {
  "ghcr.io/ezhuk/devcontainer-features/vcpkg:1": {
    "version": "2026.03.18"
  }
}
```

## Options

| Option   | Type   | Default    | Description              |
|----------|--------|------------|--------------------------|
| version  | string | 2026.03.18 | vcpkg version to install |
