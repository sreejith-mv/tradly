import 'package:tradly/screens/dashboard.dart';
import 'package:tradly/screens/home_dashboard.dart';
import 'package:tradly/screens/login_screen.dart';
import 'package:tradly/screens/registration_screen.dart';
import 'package:tradly/screens/verification_screen.dart';
import 'package:tradly/screens/otp_verification_screen.dart';
import 'package:tradly/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edu ECommerce Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
      ],
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/verification': (context) => const VerificationScreen(),
        '/otp-verification': (context) => const OtpVerificationScreen(),
        '/home-dashboard': (context) => const HomeDashboard(),
        '/dashboard': (context) => const Dashboard()
      },
      initialRoute: '/login',
      theme: ThemeData(
        fontFamily: "Montserrat",
        appBarTheme: const AppBarTheme(
          backgroundColor: brandColor,
          centerTitle: false,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontFamily: 'Montserrat-Medium',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
