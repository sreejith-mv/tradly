import 'package:tradly/theme.dart';
import 'package:tradly/widgets/elevated_button.dart';
import 'package:tradly/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brandColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.welcome,
                style: const TextStyle(
                  color: textLightColor,
                  fontFamily: 'Montserrat-Medium',
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                AppLocalizations.of(context)!.subHeader,
                style: const TextStyle(
                  color: textLightColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              EduTextField(
                hintText: AppLocalizations.of(context)!.email,
                controller: _usernameController,
              ),
              const SizedBox(height: 25),
              EduTextField(
                hintText: AppLocalizations.of(context)!.password,
                controller: _passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 50),
              EduElevatedButton(
                text: AppLocalizations.of(context)!.login,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/dashboard');
                },
              ),
              const SizedBox(height: 50),
              Text(
                AppLocalizations.of(context)!.forgetPassword,
                style: const TextStyle(color: textLightColor, fontSize: 16),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.registration,
                    style: const TextStyle(color: textLightColor, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/register'),
                    child: Text(
                      AppLocalizations.of(context)!.signUp,
                      style: const TextStyle(
                          color: textLightColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
