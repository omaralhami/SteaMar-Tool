# Setting Up Public Release Repository

This guide helps you set up a clean public repository that only shows README and releases, keeping your source code private.

## Step 1: Initialize the Repository

```bash
cd SteaMar-Tool-Public
git init
git add README.md LICENSE .gitignore
git commit -m "Initial commit: Public release repository"
```

## Step 2: Add Remote

```bash
git remote add origin https://github.com/omaralhami/SteaMar-Tool.git
git branch -M main
```

## Step 3: Push to GitHub

```bash
git push -u origin main
```

## Step 4: Create Your First Release

1. Go to https://github.com/omaralhami/SteaMar-Tool/releases
2. Click "Draft a new release"
3. Tag: `v1.0.0`
4. Title: `SteaMar Tool v1.0.0`
5. Description: Add changelog
6. Upload files:
   - `SteaMar Tool Setup 1.0.0.exe`
   - `SteaMar Tool-1.0.0-portable.exe`
7. Click "Publish release"

## Step 5: Update README (Optional)

Edit `README.md` to add any additional information users need.

## Important Notes

- ✅ **Source code stays private** - Only README and releases are public
- ✅ **Users can download** - Direct download links from GitHub Releases
- ✅ **Clean repository** - No source files, just documentation
- ✅ **Easy updates** - Just create new releases when you update the tool

## Future Releases

When you build a new version:

1. Build your EXE: `cd manifest-tool && npm run build:win:all`
2. Go to GitHub Releases → "Draft a new release"
3. Upload the new EXE files
4. Tag with new version (e.g., `v1.1.0`)
5. Add changelog
6. Publish

That's it! Your source code remains private while users can easily download your tool.

