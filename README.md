# Project Setup Instructions
These instructions will guide you through setting up the Flutter project for **web, Android, and iOS**. Make sure you follow each step carefully.

## Prerequisites
1. **Installed Software:**
Flutter SDK (already installed)
Android Studio (already installed)
Xcode (already installed for macOS users)
Git (optional, but recommended)
2. **System Requirements:**
At least 8GB of RAM.
10GB of free disk space for project dependencies and builds.
# Step 1: Flutter Environment Configuration
Before starting, ensure that Flutter is properly set up on your machine.

1. **Verify Flutter Installation:** Open a terminal (or command prompt) and run:
##
    flutter doctor
This command checks the environment and shows what's missing. If any issues are highlighted, fix them as described below:

**For Android:**
Install the **Android SDK** (through Android Studio) and set up the **Android emulator**.
Accept all required Android licenses by running:
##
    flutter doctor --android-licenses
**For iOS** (on macOS):
Set up **Xcode** and its command-line tools. Open Xcode and accept its terms.
2. If `flutter doctor` shows everything as ✅, proceed to the next step.

# Step 2: Clone or Download the Project
If you have Git installed, clone the project repository:
##
    git clone https://github.com/Ayush-S-Rawat/stylish

Either use this command

OR

Download the project ZIP file from the provided link and extract it.

# Step 3: Install Dependencies
Open a terminal/command prompt and navigate to the project folder. For example:
##
    cd /path/to/project-folder
Run the following command to install all necessary dependencies:
##
    flutter pub get
This command fetches all required Flutter packages.
# Step 4: Running the Application
## Android
Open **Android Studio**.
Select "Open Project" and navigate to the project folder.
Open an Android Emulator or connect an Android device to your computer.
To set up an emulator:
Go to **AVD Manager** in Android Studio.
Create a new emulator and start it.
In the terminal, run:
##
    flutter run -d android
This will build and run the application on the emulator or connected device.
## iOS (For macOS Users)
Open the `ios` folder of the project in **Xcode**.
Go to **Runner > Signing & Capabilities** and set up a valid Apple Developer Account.
Connect an iOS device or use the iOS Simulator.
In the terminal, run:
##
    flutter run -d ios
This will build and run the application on the simulator or device.
## Web
Ensure web support is enabled by running:
##
    flutter config --enable-web
Test the app in the browser by running:
##
    flutter run -d chrome
To build a web app, run:
##
    flutter build web
The output will be in the `build/web` directory. You can host these files on a web server.
# Step 5: Building Release Versions
## Android (APK)
To build a release APK, run:
##
    flutter build apk
The APK file will be generated in the `build/app/outputs/flutter-apk` directory. This file can be shared for installation on Android devices.

## iOS (IPA)
Open the project in Xcode (`ios/Runner.xcworkspace`).
In Xcode, select Product > Archive to create a release build.
Export the `.ipa` file for distribution.
## Web
To create a production-ready web build, run:
##
    flutter build web
The build files will be in the `build/web` folder.

# Step 6: Common Issues and Solutions
**Flutter Doctor Warnings:**
Run `flutter doctor` and follow the recommendations to fix any issues.
**Dependency Errors:**
If a package error occurs, run:
##
    flutter pub get
**Platform-Specific Errors:**
Ensure all required SDKs and dependencies for the specific platform are installed.
## Additional Notes
Keep your Flutter SDK updated to avoid compatibility issues. Run:
##
    flutter upgrade
If the app requires API keys, ensure they are properly configured in the respective platform files (`AndroidManifest.xml` for Android, `Info.plist` for iOS, etc.).

