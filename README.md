# deal-on-marketplace
DEAL ON ni app ambayo itaruhusu wafanyabiashara: Kupakia bidhaa zao. Kuweka picha na bei. Kuwasiliana na wateja kupitia WhatsApp au simu. Kutafuta bidhaa kwa makundi. Kupokea taarifa (notifications) za bidhaa mpya.pia ni app itakayopokea ads za kulipwa
flutter pub get
flutter run
name: deal_on
description: DEAL ON Marketplace App
publish_to: "none"

version: 1.0.0+1

environment:
  sdk: ">=3.6.0 <4.0.0"

dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.8

  # State Management
  flutter_riverpod: ^2.6.1

  # Routing
  go_router: ^16.0.0

  # Firebase
  firebase_core: ^4.0.0
  firebase_auth: ^6.0.0
  cloud_firestore: ^6.0.0
  firebase_storage: ^13.0.0
  firebase_messaging: ^16.0.0

  # Localization
  flutter_localizations:
    sdk: flutter
  intl: ^0.20.2

  # Image Picker
  image_picker: ^1.1.2

  # Cached Images
  cached_network_image: ^3.4.1

  # Icons
  font_awesome_flutter: ^10.8.0

  # Utilities
  shared_preferences: ^2.5.3
  url_launcher: ^6.3.2
  connectivity_plus: ^6.1.4
  package_info_plus: ^8.3.0

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^6.0.0

flutter:

  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/
    - assets/translations/.dart_tool/
.flutter-plugins
.flutter-plugins-dependencies
.packages
.pub/
build/

android/.gradle/
android/app/google-services.json

ios/Pods/
ios/Runner/GoogleService-Info.plist

*.iml
.idea/
.vscode/include: package:flutter_lints/flutter.yaml

linter:
  rules:
    avoid_print: true
    prefer_const_constructors: true
    prefer_const_literals_to_create_immutables: true
    always_declare_return_types: truecd mobile_app

flutter pub getgit add .
git commit -m "Sprint 1: Configure Flutter project"
git push origin main
