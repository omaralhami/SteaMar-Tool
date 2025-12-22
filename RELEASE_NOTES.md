# SteaMar Tool v1.0.1 - Release Notes

## 🌍 New Features

### Arabic Language Support
- **Full Arabic translation** added throughout the application
- **Language switcher** available in Settings page
- **Login page** now supports Arabic with language selector
- **Payment modals** and upgrade pages fully translated
- **Public landing page** (SteaMar-Tool-Public) now supports Arabic
- Simple, human-friendly Arabic translations (not formal/classical)
- Language preference is saved and persists across app restarts
- UI layout remains LTR (left-to-right) for all languages to maintain consistency

## 🐛 Bug Fixes

### Script Fixes
- **Fixed "Fix Games Not Showing" script** - Now works correctly when app is packaged as EXE
  - Script is now properly bundled and found in all deployment scenarios
  - Fixed path resolution for packaged applications

- **Fixed "Install SteaMarTools Script"** - Multiple improvements:
  - Fixed issue where script opened random Chromium browser
  - Corrected installation command to use `irm steam.run | iex`
  - Fixed PowerShell command execution with proper Base64 encoding
  - Resolved issues with PowerShell window not opening
  - Improved error handling and user feedback

### Other Fixes
- Fixed duplicate event listeners causing multiple notifications
- Improved script path detection for packaged applications
- Enhanced error messages and user feedback

## 📝 Translation Updates

### Updated Terminology
- "الإصلاحات" → "تشغيل الاونلاين" (Online Fixes → Online Play)
- "المجتمع" → "سيرفر الدسكورد" (Community → Discord Server)
- "الملفات التوضيحية" → "الالعاب" (Manifests → Games)

## 🎨 UI Improvements

- Added minimal language switcher to login page (top-right corner)
- Improved payment modal translations
- Enhanced upgrade plan page with Arabic support
- Better visual feedback for script execution

## 📦 Technical Improvements

- Added proper script bundling in `package.json` for electron-builder
- Improved IPC communication for script execution
- Enhanced error handling in PowerShell command execution
- Better path resolution for resources in packaged applications

## 🔧 For Developers

- Added comprehensive translation system (`translations.js`)
- Implemented language preference storage
- Added translation support to auth flow (login, success, denied pages)
- Improved script execution with Base64 encoding for special characters

---

**Note**: This release includes significant improvements to script reliability and adds full Arabic language support. All scripts now work correctly in both development and packaged (EXE) versions of the application.

**Download**: [SteaMar Tool v1.0.1](https://github.com/omaralhami/SteaMar-Tool/releases/download/v1.0.1/SteaMar.Tool.v1.0.1.exe)

