import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/elevated_button.dart';
import '../widgets/text_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _mobileController = TextEditingController();
    return Scaffold(
      backgroundColor: brandColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Verify your phone number',
                style: TextStyle(
                  color: textLightColor,
                  fontFamily: 'Montserrat-Medium',
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'We have sent you an SMS with a code to enter number',
                style: TextStyle(
                  color: textLightColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              EduTextField(
                hintText: "Email/Mobile Number",
                controller: _mobileController,
              ),
              const SizedBox(height: 50),
              const Text(
                'Or login with Social network',
                style: TextStyle(color: textLightColor, fontSize: 16),
              ),
              const SizedBox(height: 20),
              EduElevatedButton(
                text: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, '/otp-verification');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
