# Quick Start Guide - Build & Install in 5 Minutes

## What You Need
- Android Studio (free download)
- An Android phone (Android 7.0+) OR Android Emulator
- USB cable (if using phone)

---

## Step 1: Download Android Studio

1. Go to **developer.android.com/studio**
2. Download and install Android Studio
3. Launch it (first run takes a few minutes to set up)

---

## Step 2: Open the Project

1. Click **File → Open**
2. Navigate to the **MindfulnesApp** folder
3. Click **Open**
4. Wait 2-3 minutes for Gradle to sync (watch bottom bar)

---

## Step 3: Set Up Device

**Option A: Using Your Phone**
- Connect phone via USB
- On phone: Settings → About Phone → tap "Build Number" 7 times
- Go back, open "Developer Options"
- Enable "USB Debugging"
- Android Studio will recognize the device

**Option B: Using Emulator (Recommended for first test)**
- In Android Studio: Tools → Device Manager
- Click "Create Device"
- Choose "Pixel 4a" 
- Download Android 14 image when prompted
- Click "Play" to launch emulator
- Wait for it to boot (1-2 minutes first time)

---

## Step 4: Build & Run

1. Click the green **Play** button (▶) at top
2. Select your device from the list
3. Click **OK**
4. Wait 1-2 minutes for build to complete
5. App installs and opens automatically

---

## Step 5: Use the App

1. **Main Screen opens** - You'll see "Mindfulness Reminders"
2. **Set interval** - Default is 45 minutes, keep it or change
3. **Tap "Start"** - Status will show "Active every 45 minutes"
4. **Test a reminder** - Wait a minute or so, you'll get notified
5. **Tap notification** - See the fullscreen reminder
6. **Tap "I'm Ready"** - 3-second pause timer counts down

---

## That's It!

Your app is now running. Reminders will come every 45 minutes.

### What happens next?
- App runs in background
- Notifications appear randomly with different mindfulness tips
- If you restart your phone, app automatically resumes
- To stop: Open app, tap "Stop"

---

## Troubleshooting

**Stuck on "Gradle syncing"?**
→ Wait longer (can take 3-5 mins on first run), or close/reopen the project

**Device not showing in run dialog?**
→ Check USB cable, restart phone, or use Emulator instead

**Build fails with "SDK not found"?**
→ In Android Studio: Settings → Appearance & Behavior → System Settings → Android SDK
→ Download SDK 34 if it's not there

**App crashes on launch?**
→ Make sure you're on Android 7.0 or higher
→ Try on Emulator first to debug

---

## Next Steps

- Try different interval times (15min, 30min, 60min)
- Customize reminder text by editing `MindfulnessWorker.kt`
- Modify colors in `themes.xml`
- Build APK to share with friends (Build → Build APK)

Enjoy your mindfulness practice! 🧘
