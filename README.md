# User Profile Creation App

![alt text](62e84653668786a83e22fe7d_61d62995c3780c6cc42bfa8a_mobile-app-user-expectations-hero.jpeg)

This project provides a simple Flutter application where users can create and view their profiles. It showcases basic navigation between screens and state management in Flutter.

## Table of Contents

- [Features](#features)
- [Used Technologies](#used-technologies)
- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Setup and Installation](#setup-and-installation)
- [Running the Application](#running-the-application)
- [File Structure](#file-structure)
- [Router](#router)
- [Testing](#testing)
- [Appendix: Additional Information](#appendix-additional-information)

---

## Features

- **User Profile Management**:
  - **Create Profile**: Users can enter their name, age, and occupation.
  - **View Profile**: Display the saved profile information.
  - **Navigate Easily**: Buttons for moving between screens and returning to the home screen.
- **Simple UI with Three Screens**:
  - **Home Screen**: Start screen with a button to create a profile.
  - **Profile Creation Screen**: Allows input of user data.
  - **Profile Display Screen**: Shows the entered data.

## Used Technologies

- **Flutter**: The framework used to build cross-platform mobile applications.
- **Dart**: Programming language for Flutter applications.

## Overview

**This project demonstrates the essentials of Flutter application structure and routing, enabling users to create, view, and navigate through different screens within a simple app layout.**

## Prerequisites

- **Flutter SDK**: Install the Flutter SDK. You can download it from [Flutter's official website](https://flutter.dev/docs/get-started/install).
- **Dart**: The programming language for Flutter.
- **Android Studio or VS Code**: Recommended IDEs for Flutter development.

## Setup and Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/profile-creation-app.git
   cd profile-creation-app
   ```

2. **Install Dependencies**:
   Ensure all required Flutter packages are installed:
   ```bash
   flutter pub get
   ```

3. **Run the App**:
   Start the app on an emulator or a connected device:
   ```bash
   flutter run
   ```

## Running the Application

- **Home Screen**:
  - The app opens on the **Home** screen, displaying a “Create Profile” button.
  
- **Profile Creation Screen**:
  - Upon clicking **Create Profile**, you are navigated to a screen where you can enter **Name**, **Age**, and **Occupation**.
  - Click **Save and View Profile** to save and move to the Profile screen.
  
- **Profile Screen**:
  - The Profile screen displays the user’s **Name**, **Age**, and **Occupation**.
  - A button labeled **Back to Home** returns you to the main Home screen.

## File Structure

The file structure of this project is as follows:

```plaintext
lib/
├── config/
│   └── router.dart             # Defines app routing and navigation paths.
├── presentations/
│   ├── screens/
│   │   ├── creation/
│   │   │   └── crear_perfil.dart  # Profile creation screen with form fields.
│   │   ├── home/
│   │   │   └── home.dart          # Home screen with "Create Profile" button.
│   │   └── profile/
│   │       └── perfil.dart        # Profile display screen with user data.
│   └── screens.dart             # Screen manager for easier screen references.
└── main.dart                    # Entry point of the application.
```

## Testing

To test the application, you can use the built-in tools in **Flutter DevTools** or **Android Studio**. The following steps demonstrate testing basic navigation and UI functionality:

1. **Run the Application in Debug Mode**:
   ```bash
   flutter run --debug
   ```
2. **Navigate through Screens**:
   - Ensure smooth transitions between **Home**, **Profile Creation**, and **Profile** screens.
3. **UI Validation**:
   - Check that entered data is displayed accurately on the Profile screen.

## Appendix: Additional Information

This app is structured as a simple demonstration of Flutter’s navigation and state management capabilities, providing a foundation for more advanced projects.

---