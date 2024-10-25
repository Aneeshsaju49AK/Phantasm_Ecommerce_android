//try to call all import from export file
//to reduce of multiple import for the same file or widget

import 'package:phantasm/core/Export/export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Only portrait mode
    DeviceOrientation.portraitDown,
  ]);
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

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashScreenProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: buildTheme(),
        home: const HomeSplashScreen(),
      ),
    );
  }
}
