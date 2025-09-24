# Documentation Scripts

This directory contains scripts for maintaining the Reliant documentation.

## Version Management

### `get-version.sh`
Fetches the current version of Reliant from the main project. It checks in order:
1. Git tags (using `git describe --tags`)
2. `package.json` in the Reliant project
3. Falls back to "1.0.0" if neither is available

### `update-version.sh`
Updates the Hugo data file (`data/version.json`) with the current version from the Reliant project. This is automatically called when running:
- `make dev` - Start development server
- `make serve` - Start production server locally
- `make build` - Build for production

## Usage

The version is automatically updated whenever you build or serve the documentation. To manually update:

```bash
make update-version
# or directly:
./scripts/update-version.sh
```

The version is displayed in:
- Landing page hero section (as a badge)
- Can be accessed in any Hugo template via `{{ .Site.Data.version.current }}`

## Adding Version to Templates

To display the version in any Hugo template:

```html
<!-- Show version -->
<span>v{{ .Site.Data.version.current }}</span>

<!-- Show release date -->
<span>Released: {{ .Site.Data.version.release_date }}</span>
```