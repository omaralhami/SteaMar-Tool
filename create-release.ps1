# SteaMar Tool - Release Helper Script
# This script helps you create a GitHub release

param(
    [Parameter(Mandatory=$true)]
    [string]$Version,
    
    [Parameter(Mandatory=$false)]
    [string]$Changelog = "Bug fixes and improvements"
)

Write-Host "🚀 SteaMar Tool Release Helper" -ForegroundColor Cyan
Write-Host ""

# Check if dist folder exists
$distPath = "..\manifest-tool\dist"
if (-not (Test-Path $distPath)) {
    Write-Host "❌ Error: dist folder not found at $distPath" -ForegroundColor Red
    Write-Host "💡 Run: cd manifest-tool && npm run build:win:all" -ForegroundColor Yellow
    exit 1
}

# Find EXE files
$setupExe = Get-ChildItem -Path $distPath -Filter "*Setup*.exe" | Select-Object -First 1
$portableExe = Get-ChildItem -Path $distPath -Filter "*portable*.exe" | Select-Object -First 1

if (-not $setupExe -and -not $portableExe) {
    Write-Host "❌ Error: No EXE files found in $distPath" -ForegroundColor Red
    Write-Host "💡 Build the tool first: cd manifest-tool && npm run build:win:all" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ Found release files:" -ForegroundColor Green
if ($setupExe) { Write-Host "   📦 Setup: $($setupExe.Name)" -ForegroundColor White }
if ($portableExe) { Write-Host "   📦 Portable: $($portableExe.Name)" -ForegroundColor White }
Write-Host ""

Write-Host "📝 Release Information:" -ForegroundColor Cyan
Write-Host "   Version: v$Version" -ForegroundColor White
Write-Host "   Changelog: $Changelog" -ForegroundColor White
Write-Host ""

Write-Host "📋 Next Steps:" -ForegroundColor Cyan
Write-Host "1. Go to: https://github.com/omaralhami/SteaMar-Tool/releases/new" -ForegroundColor Yellow
Write-Host "2. Tag: v$Version" -ForegroundColor Yellow
Write-Host "3. Title: SteaMar Tool v$Version" -ForegroundColor Yellow
Write-Host "4. Description:" -ForegroundColor Yellow
Write-Host "   $Changelog" -ForegroundColor White
Write-Host "5. Upload files from: $distPath" -ForegroundColor Yellow
Write-Host "   - $($setupExe.Name)" -ForegroundColor White
if ($portableExe) {
    Write-Host "   - $($portableExe.Name)" -ForegroundColor White
}
Write-Host "6. Click 'Publish release'" -ForegroundColor Yellow
Write-Host ""

# Open releases page
$releasesUrl = "https://github.com/omaralhami/SteaMar-Tool/releases/new"
Write-Host "🔗 Opening GitHub Releases page..." -ForegroundColor Cyan
Start-Process $releasesUrl

Write-Host ""
Write-Host "✅ After publishing, use Discord command:" -ForegroundColor Green
Write-Host "/release version:$Version download_link:https://github.com/omaralhami/SteaMar-Tool/releases/download/v$Version/$($setupExe.Name) changelog:$Changelog" -ForegroundColor White

