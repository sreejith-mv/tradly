import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../theme.dart';
import '../widgets/elevated_button.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OtpFieldController _otpController = OtpFieldController();
    return Scaffold(
      backgroundColor: brandColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Phone Verification',
                style: TextStyle(
                  color: textLightColor,
                  fontFamily: 'Montserrat-Medium',
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Enter your OTP code here',
                style: TextStyle(
                  color: textLightColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              OTPTextField(
                controller: _otpController,
                length: 5,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 45,
                fieldStyle: FieldStyle.underline,
                otpFieldStyle: OtpFieldStyle(
                  focusBorderColor: textLightColor,
                  borderColor: textLightColor,
                  enabledBorderColor: textLightColor,
                ),
                style: const TextStyle(fontSize: 16, color: textLightColor),
                onChanged: (pin) {},
                onCompleted: (pin) {},
              ),
              const SizedBox(height: 50),
              const Text(
                'Didn’t you received any code? ',
                style: TextStyle(color: textLightColor, fontSize: 16),
              ),
              const Text(
                'Resent new code',
                style: TextStyle(color: textLightColor, fontSize: 16),
              ),
              const SizedBox(height: 50),
              EduElevatedButton(
                text: 'Verify',
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
