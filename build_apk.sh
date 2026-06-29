#!/bin/bash
# Build APK Script for Mac/Linux
# This script builds the APK automatically

echo ""
echo "===================================="
echo "Mindfulness Reminders - APK Builder"
echo "===================================="
echo ""

# Check if gradlew exists
if [ ! -f "gradlew" ]; then
    echo "ERROR: gradlew not found!"
    echo "Make sure you're in the MindfulnesApp folder"
    exit 1
fi

# Make gradlew executable
chmod +x gradlew

# Check Java
echo "Checking Java installation..."
if ! command -v java &> /dev/null; then
    echo "ERROR: Java not found!"
    echo "Please install Java JDK 11 or higher"
    echo "https://www.oracle.com/java/technologies/downloads/"
    exit 1
fi

echo "Java OK!"
echo ""

# Build
echo "Building APK (this will take 3-5 minutes)..."
echo ""

./gradlew clean build assembleRelease

if [ $? -eq 0 ]; then
    echo ""
    echo "===================================="
    echo "SUCCESS! APK built successfully"
    echo "===================================="
    echo ""
    echo "APK Location:"
    echo "app/build/outputs/apk/release/app-release.apk"
    echo ""
    echo "Next steps:"
    echo "1. Copy app-release.apk to your phone"
    echo "2. Open file manager on phone"
    echo "3. Tap the APK file and install"
    echo ""
else
    echo ""
    echo "ERROR: Build failed!"
    echo "Check the error messages above"
    exit 1
fi
