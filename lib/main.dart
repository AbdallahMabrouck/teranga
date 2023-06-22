import 'package:flutter/material.dart';
import 'package:teranga/screens/splash_screen.dart';

import 'screens/home_screen.dart';
import 'screens/on_boarding_screen.dart';
import 'screens/otp_screen.dart';
import 'screens/register_screens.dart';
import 'screens/user_information_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teranga',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnBoardingScreen.id: (context) => const OnBoardingScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        OtpScreen.id: (context) => const OtpScreen(),
        UserInformationScreen.id: (context) => const UserInformationScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
