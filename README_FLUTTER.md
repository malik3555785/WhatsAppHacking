# Flutter Project Setup Guide

This is a Flutter application for WhatsApp security analysis and testing.

## Prerequisites

- **Flutter SDK**: [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Dart SDK**: Comes with Flutter
- **Android Studio** or **Xcode** (for iOS development)
- **Git**

## Project Structure

```
lib/
  main.dart                 # Application entry point
  screens/                  # UI screens
  services/                 # Business logic and API calls
  models/                   # Data models
  widgets/                  # Reusable widgets
  utils/                    # Utility functions
```

## Setup Instructions

### 1. Install Dependencies

```bash
flutter pub get
```

### 2. Run the Application

#### Android
```bash
flutter run
```

#### iOS
```bash
flutter run -d iPhone
```

#### Web
```bash
flutter run -d chrome
```

### 3. Build for Production

#### Android APK
```bash
flutter build apk --release
```

#### Android App Bundle
```bash
flutter build appbundle --release
```

#### iOS
```bash
flutter build ios --release
```

#### Web
```bash
flutter build web --release
```

## Development

### Code Generation
If you're using code generation libraries, run:
```bash
flutter pub run build_runner build
```

### Code Analysis
```bash
flutter analyze
```

### Running Tests
```bash
flutter test
```

### Formatting Code
```bash
dart format lib/
```

## Dependencies

The project includes:
- `http` - For HTTP requests
- `provider` - For state management
- `shared_preferences` - For local data storage
- `path_provider` - For file path access

## Configuration Files

- `pubspec.yaml` - Project configuration and dependencies
- `analysis_options.yaml` - Lint rules for code quality
- `.gitignore` - Git ignore rules

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Flutter Widgets Catalog](https://flutter.dev/docs/development/ui/widgets)

## License

This project is part of the WhatsApp Hacking security research initiative.
