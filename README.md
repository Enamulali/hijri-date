# Hijri Menu Bar

Welcome to the Hijri Menu Bar app! This simple macOS app allows you to view the current Hijri date conveniently from the menu bar.

![Cover Image](./Hijri%20Date%20Cover.jpeg)

## Installation

1. You can download the latest version of the app from the [releases page](https://github.com/Enamulali/hijri-date/releases).
2. Open the downloaded DMG file.
3. Drag the application icon into the "Applications" folder (or "Desktop").
4. Once the application is in the "Applications" (or "Desktop") folder, you can eject the DMG file.
5. Open the application from the "Applications" (or "Desktop") folder to launch it.

### Important Note

- **Do not open the application directly from the DMG file.** Dragging it to the "Applications" folder ensures that it is properly installed on your system and will persist even after ejecting the DMG file.


### Disabling Gatekeeper

Before opening the app for the first time, you may need to temporarily disable Gatekeeper to bypass the "Hijri Menu Bar cannot be opened because Apple cannot check it for malicious software" error. 

#### Command Line Method:
1. Open Terminal.
2. Enter the following command and press Enter:
```sudo spctl --master-disable```
3. You will be prompted to enter your password. Type your password (it will not be visible) and press Enter.
4. Gatekeeper is now disabled.

#### System Preferences Method:
1. Open "System Preferences" from the Apple menu.
2. Click on "Security & Privacy."
3. Go to the "General" tab.
4. Click the lock icon at the bottom left and enter your password.
5. Under "Allow apps downloaded from," select "App Store and identified developers."
6. The changes are automatically saved, and Gatekeeper is disabled.

### Enabling Gatekeeper
Once you have launched the app successfully, it's recommended to re-enable Gatekeeper for security purposes.

#### Command Line Method:
1. Open Terminal.
2. Enter the following command and press Enter:
```sudo spctl --master-enable```
3. Gatekeeper is now enabled.

#### System Preferences Method:
1. Follow steps 1-4 from the "System Preferences Method" above.
2. Select "Mac App Store" or "App Store and identified developers" to re-enable Gatekeeper.
3. The changes are automatically saved, and Gatekeeper is enabled.

## Usage
1. Download and open the app.
2. The Hijri date will be displayed in the menu bar.
3. Click on the menu bar item to view the Hijri date in Arabic and English.
4. Click on the menu bar item to close the popover.

## Support
For any issues or suggestions, please [open an issue](https://github.com/Enamulali/hijri-date/issues).
