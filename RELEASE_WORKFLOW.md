# Release Workflow

Simple guide for creating new releases on GitHub.

## Quick Steps

1. **Build your EXE:**
   ```bash
   cd ../manifest-tool
   npm run build:win:all
   ```

2. **Go to GitHub Releases:**
   - Visit: https://github.com/omaralhami/SteaMar-Tool/releases
   - Click "Draft a new release"

3. **Fill in release details:**
   - **Tag:** `v1.0.0` (use semantic versioning)
   - **Title:** `SteaMar Tool v1.0.0`
   - **Description:** Add changelog (what's new, bug fixes, etc.)

4. **Upload files:**
   - Drag and drop: `SteaMar Tool Setup 1.0.0.exe`
   - Drag and drop: `SteaMar Tool-1.0.0-portable.exe`
   - Files are located in: `manifest-tool/dist/`

5. **Publish:**
   - Click "Publish release"
   - Done! Users can now download from the releases page

## Using Discord `/release` Command

After creating the GitHub release, you can post it to Discord:

```
/release version:1.0.0 download_link:https://github.com/omaralhami/SteaMar-Tool/releases/download/v1.0.0/SteaMar-Tool-Setup-1.0.0.exe changelog:Initial release with all features
```

## Version Numbering

Use semantic versioning:
- **Major** (1.0.0): Breaking changes
- **Minor** (1.1.0): New features, backward compatible
- **Patch** (1.0.1): Bug fixes

Example progression:
- v1.0.0 → v1.0.1 → v1.1.0 → v1.2.0 → v2.0.0

