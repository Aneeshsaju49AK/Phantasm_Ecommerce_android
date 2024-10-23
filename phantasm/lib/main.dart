import 'package:phantasm/core/Export/export.dart';

//try to call all import from export file
//to reduce of multiple import for the same file or widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: primaryColor, // Make status bar transparent
        statusBarIconBrightness: Brightness.light, // For light status bar icons
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      home: const HomeSplashScreen(),
    );
  }
}
