# Mindfulness Reminders Android App

A simple, distraction-free Android app that sends mindfulness reminders throughout your day to keep you present and aware.

## Features

✓ **Random mindfulness prompts** - Get different reminders each time:
  - Pay attention to your senses
  - Focus on your breathing
  - Live in the moment
  - Check in with your body
  - Keep silence & observe
  - No judgment
  - 3-second pause before speaking

✓ **Customizable intervals** - Set reminders every 15, 30, 45, 60+ minutes

✓ **Fullscreen display** - Reminder pops up over all apps with 3-second pause timer

✓ **Persistent** - Reminders continue after device restart

✓ **Minimal design** - No distractions, just simple text and breathing space

## Installation

### Option 1: Build from Source (Recommended)

**Requirements:**
- Android Studio (Electric Eel or newer)
- Android SDK 34
- Kotlin plugin (included with Android Studio)

**Steps:**

1. **Clone/Download the project**
   ```
   Copy all files to a directory
   ```

2. **Open in Android Studio**
   - File → Open
   - Select the project folder
   - Wait for Gradle sync to complete

3. **Connect device or start emulator**
   - Enable Developer Mode on your Android device (tap Build Number 7 times in Settings → About)
   - Enable USB Debugging in Developer Options
   - Connect device via USB
   - OR use Android Emulator from Android Studio

4. **Build & Run**
   - Click "Run" button (green play icon) or press Shift+F10
   - Select your device
   - App installs and launches

### Option 2: Build APK for distribution

1. In Android Studio: Build → Build Bundle(s) / APK(s) → Build APK(s)
2. The APK file appears in: `app/release/app-release.apk`
3. Transfer to device and install

## Project Structure

```
MindfulnesApp/
├── app/
│   ├── src/main/
│   │   ├── java/com/mindfulness/reminder/
│   │   │   ├── MainActivity.kt           # Settings screen
│   │   │   ├── MindfulnessWorker.kt      # Background notification sender
│   │   │   ├── ReminderActivity.kt       # Fullscreen reminder display
│   │   │   └── BootReceiver.kt           # Restart after reboot
│   │   ├── res/
│   │   │   ├── layout/
│   │   │   │   ├── activity_main.xml     # Main UI
│   │   │   │   └── activity_reminder.xml # Fullscreen reminder
│   │   │   ├── drawable/
│   │   │   │   ├── button_start.xml
│   │   │   │   ├── button_stop.xml
│   │   │   │   ├── rounded_background.xml
│   │   │   │   ├── edit_text_background.xml
│   │   │   │   └── ic_notification.xml
│   │   │   └── values/
│   │   │       ├── strings.xml
│   │   │       └── themes.xml
│   │   └── AndroidManifest.xml
│   └── build.gradle
```

## How It Works

**When you tap "Start":**
1. App saves your chosen interval (default: 45 minutes)
2. WorkManager schedules recurring notifications
3. Every X minutes, a random mindfulness reminder is sent

**When notification arrives:**
1. Notification appears with the reminder title and tip
2. Tap notification → Fullscreen view opens
3. 3-second pause counter counts down
4. "I'm Ready" button closes the reminder
5. You return to present moment with reset mind

**Reminders continue if:**
- You ignore the notification (it stays until you interact with it)
- Your phone restarts (BootReceiver reschedules automatically)
- The app is in background (WorkManager handles it)

## Permissions Required

- `POST_NOTIFICATIONS` - Send reminder notifications
- `RECEIVE_BOOT_COMPLETED` - Restart reminders after device reboot
- `VIBRATE` - Vibration on notification
- `SCHEDULE_EXACT_ALARM` - Precise timing for reminders

## Customization

### Change reminder interval

1. Open Settings (main screen)
2. Edit the number in minutes (e.g., 30, 60, 120)
3. Tap "Start" to apply

### Add custom reminders

Edit `MindfulnessWorker.kt`, modify the `reminders` list:

```kotlin
private val reminders = listOf(
    RemindItem("Your title", "Your message"),
    RemindItem("Another title", "Another message"),
    // Add more...
)
```

Then rebuild the app.

### Change colors

Edit `themes.xml`:
- `colorPrimary` - Button and accent color
- `colorPrimaryDark` - Dark accent
- Modify drawable files for custom button colors

## Troubleshooting

**Reminders not working?**
1. Check if "Start" shows "Active" status
2. Ensure notifications are enabled in Android Settings → Apps → Mindfulness Reminders → Permissions → Notifications
3. Check battery saver mode isn't killing background tasks

**Reminders not persisting after reboot?**
1. Ensure BootReceiver is in AndroidManifest.xml
2. Check "RECEIVE_BOOT_COMPLETED" permission is granted

**Notification not appearing?**
1. Volume is not muted
2. "Do Not Disturb" mode is off
3. App notifications are enabled in Settings

## Technical Details

- **Minimum SDK:** Android 7.0 (API 24)
- **Target SDK:** Android 14 (API 34)
- **Language:** Kotlin
- **Background scheduling:** WorkManager (reliable, doze-aware)
- **Notifications:** Android Notification API
- **Architecture:** Simple Activity + Worker pattern

## Notes

- Notifications may be delayed in low-battery or extreme power saver modes
- WorkManager optimizes notification timing; exact timing isn't guaranteed
- The app uses minimal battery (background work is efficient)
- All reminders are local; no data is sent anywhere

## Future Enhancements

- Breathing exercise animations
- Daily statistics on reminders received
- Custom reminder text
- Time-based scheduling (e.g., only 9am-6pm)
- Meditation timer integration
- Haptic feedback patterns
