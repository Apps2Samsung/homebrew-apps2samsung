# homebrew-Samsung-Jellyfin-Installer

Install Samsung Jellyfin Installer with:

    brew trust Apps2Samsung/homebrew-apps2samsung
    brew install --cask Apps2Samsung/homebrew-apps2samsung/Apps2Samsung

Because Apps2Samsung is an open-source tool and is not signed with a paid Apple Developer certificate, macOS Gatekeeper will flag the app the first time you try to open it. 

You can safely bypass this warning using any of the following three methods. You will only need to do this once.

#### Method 1: The Quick Way (Recommended)
1. Open Finder and locate the extracted `Apps2Samsung.app` (e.g., in your Applications or Downloads folder).
2. **Right-click** (or hold `Control` and click) on the app.
3. Select **Open** from the context menu.
4. A warning prompt will appear, but it will now include an **Open** button. Click it to launch the app.

#### Method 2: Via System Settings
1. Double-click `Apps2Samsung.app` to open it normally. You will receive the error. Click **Cancel**.
2. Click the Apple Logo () in the top-left corner and open **System Settings** (or System Preferences).
3. Navigate to **Privacy & Security**.
4. Scroll down to the **Security** section. You will see a message saying *"Apps2Samsung was blocked from use because it is not from an identified developer"*.
5. Click **Open Anyway** and confirm to launch the app.

#### Method 3: Via Terminal (Advanced)
If you prefer the command line, you can manually remove the quarantine attribute that macOS applies to files downloaded from the internet:
1. Open the **Terminal** app.
2. Run the following command (adjust the path if the app is not in your Applications folder):
   ```bash
   xattr -dr com.apple.quarantine /Applications/Apps2Samsung.app
