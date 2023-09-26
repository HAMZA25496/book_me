import '../Screens/progress_screen.dart';
import '../Screens/qrscan_screen.dart';
import '../Screens/unsucces_screen.dart';
import '../Screens/scan_succes_screen.dart';
import 'package:flutter/material.dart';
import '../Screens/login_screen.dart';
import 'Screens/next_screen2.dart';
import '../Screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Screens/qrscancode.dart';
import 'Screens/registration_screen.dart';
import 'Widgets/bottom_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await  Firebase.initializeApp();
  runApp(const BookMeApp());
}

class BookMeApp extends StatefulWidget {
  const BookMeApp({super.key});

  @override
  State<BookMeApp> createState() => _BookMeAppState();
}

class _BookMeAppState extends State<BookMeApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: LoginScreen.id, routes: {

      LoginScreen.id: (context) => const LoginScreen(),
      HomeScreen.id: (context) => const BottomNavigation(),
      NextScreen2.id: (context) => const NextScreen2(),
      QRScanScreen.id: (context) => const QRScanScreen(),
      ProgressScreen.id: (context) => const ProgressScreen(),
      ScanSuccesScreen.id: (context) => const ScanSuccesScreen(),
      UnsuccesScreen.id: (context) => const UnsuccesScreen(),
      RegistrationScreen.id: (context) => const RegistrationScreen(),
      QRCodeScan.id: (context) => const QRCodeScan(),

    });
  }
}
