mobile_app/lib/app.dartimport 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/splash/presentation/splash_screen.dart';

class DealOnApp extends StatelessWidget {
  const DealOnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEAL ON',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,

      home: const SplashScreen(),
    );
  }
}lib/core/theme/import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFFD4AF37);

  static const Color secondary = Color(0xFF121212);

  static const Color background = Colors.white;

  static const Color success = Color(0xFF2E7D32);

  static const Color error = Color(0xFFC62828);

  static const Color text = Color(0xFF222222);
}import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      scaffoldBackgroundColor: AppColors.background,

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
      ),

      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}lib/
└── features/
    └── splash/
        └── presentation/flutter pub get
flutter rungit add .
git commit -m "Sprint 1: Add app theme and splash screen"
git push origin develop
