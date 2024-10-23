
import 'package:phantasm/core/Export/export.dart';

ThemeData buildTheme() {
  return ThemeData(
    // Background color for scaffold
    scaffoldBackgroundColor: Colors.white,

    // Text styles for general use
    textTheme: const TextTheme(
      bodySmall: TextStyle(color: Colors.black), // Primary text color
      bodyMedium: TextStyle(color: Colors.black), // Secondary text color
      bodyLarge: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold), // Headline text
    ),

    // Define button styles
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Background color for buttons
        foregroundColor: Colors.white, // Text color for buttons
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
      ),
    ),

    // Icon theme to set color for icons globally
    iconTheme: const IconThemeData(
      color: Colors.black, // Set icon color globally
    ),

    // AppBar theme for the status bar and app bar styles
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white, // AppBar background color
      iconTheme: IconThemeData(color: Colors.black), // AppBar icon color
      titleTextStyle: TextStyle(
        color: Colors.black, // AppBar title color
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.yellow, // Transparent status bar
        statusBarIconBrightness:
            Brightness.dark, // Dark icons on light background
      ),
    ),

    // Floating action button theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue, // Floating action button color
      foregroundColor: Colors.white, // Floating action button icon color
    ),
  );
}
