import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:propert_ez/ui/screens/dashboardScreen.dart';
import 'package:propert_ez/ui/screens/detailsScreen.dart';
import 'package:propert_ez/ui/screens/loding.dart';
import 'package:propert_ez/ui/screens/onBordingScreen.dart';
import 'package:propert_ez/ui/screens/signInScreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
  FlutterNativeSplash.remove();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: OnBordingScreen(),
      // home: Placeholder(),
    );
  }
}
