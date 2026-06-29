@echo off
REM Build APK Script for Windows
REM This script builds the APK automatically

echo.
echo ====================================
echo Mindfulness Reminders - APK Builder
echo ====================================
echo.

REM Check if gradlew exists
if not exist "gradlew.bat" (
    echo ERROR: gradlew.bat not found!
    echo Make sure you're in the MindfulnesApp folder
    pause
    exit /b 1
)

REM Check Java
echo Checking Java installation...
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java not found! 
    echo Please install Java JDK 11 or higher
    echo https://www.oracle.com/java/technologies/downloads/
    pause
    exit /b 1
)

echo Java OK!
echo.

REM Build
echo Building APK (this will take 3-5 minutes)...
echo.

call gradlew.bat clean build assembleRelease

if %errorlevel% equ 0 (
    echo.
    echo ====================================
    echo SUCCESS! APK built successfully
    echo ====================================
    echo.
    echo APK Location:
    echo app\build\outputs\apk\release\app-release.apk
    echo.
    echo Next steps:
    echo 1. Copy app-release.apk to your phone
    echo 2. Open file manager on phone
    echo 3. Tap the APK file and install
    echo.
    pause
) else (
    echo.
    echo ERROR: Build failed!
    echo Check the error messages above
    pause
    exit /b 1
)
