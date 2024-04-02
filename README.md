# Hijri Menu Bar

Welcome to the Hijri Menu Bar app! This simple macOS app allows you to view the current Hijri date conveniently from the menu bar.

**Ensure you read the documentation properly to set up the app correctly. The most important steps are:**

- [Installation](#installation): Download and install the app.
- [Disabling Gatekeeper](#disabling-gatekeeper): Temporarily disable Gatekeeper to bypass security checks.
- [Enabling Launch at Login](#Launch-App-upon-Login): Set up the app to launch automatically at login.
- [How to use](#usage)

![Cover Image](./Hijri%20Date%20Cover.jpeg)

## Installation

1. You can download the latest version of the app from the [releases page](https://github.com/Enamulali/hijri-date/releases).
2. Open the downloaded DMG file.
3. Drag the application icon into the "Applications" folder.
4. Double click the "Applications" folder and launch the app from there.
5. Once the application is in the "Applications" folder, you can eject the DMG file.

### Important Note
- **Do not open the application directly from the DMG file.** Dragging it to the "Applications" folder ensures that it is properly installed on your system and will persist even after ejecting the DMG file.


### Disabling Gatekeeper

Before opening the app for the first time, you may need to temporarily disable Gatekeeper to bypass the "Hijri Menu Bar cannot be opened because Apple cannot check it for malicious software" error. We will use the command line to do this. See below how to do this. 

1. Open Terminal.
2. Enter the following command and press Enter:
```sudo spctl --master-disable```
3. You will be prompted to enter your password. Type your password (it will not be visible) and press Enter.
4. Gatekeeper is now disabled.


### Enabling Gatekeeper
Once you have launched the app successfully, it's recommended to re-enable Gatekeeper for security purposes. We will use the command line to do this.

1. Open Terminal.
2. Enter the following command and press Enter:
```sudo spctl --master-enable```
3. Gatekeeper is now enabled.


## Usage
1. Download and open the app.
2. The Hijri date will be displayed in the menu bar.
3. Click on the menu bar item to view the Hijri date in Arabic and English.
4. Click on the menu bar item to close the popover.

### Important Note
- **To ensure the Application runs upon login, follow the steps in the App menu.** Click on the &#8505; icon in the app. These instructions are also listed below.

### Launch App upon Login

To automatically launch the app at login, please follow these steps:

1. Open System Settings from the Apple menu.
2. Navigate to General.
3. Go to the Login Items tab.
4. Click the '+' button and add your app from the Applications folder.
5. The App should launch at login.

### Quitting the App

1. Click on the &#8505; icon in the app to bring up the menu.
2. Click the red 'Quit App' button.

Pressing 'Quit App' will remove the app from the menu bar.\nRelaunch from the Applications folder if needed.

## Support
For any issues or suggestions, please [open an issue](https://github.com/Enamulali/hijri-date/issues).
