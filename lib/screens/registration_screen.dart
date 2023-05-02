import 'package:tradly/theme.dart';
import 'package:tradly/widgets/elevated_button.dart';
import 'package:tradly/widgets/text_field.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _reEnterPasswordController =
      TextEditingController();

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
              const Text(
                'Welcome to tradly',
                style: TextStyle(
                  color: textLightColor,
                  fontFamily: 'Montserrat-Medium',
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Signup to your account',
                style: TextStyle(
                  color: textLightColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              EduTextField(
                hintText: "First Name",
                controller: _firstNameController,
              ),
              const SizedBox(height: 25),
              EduTextField(
                hintText: "Last Name",
                controller: _lastNameController,
              ),
              const SizedBox(height: 25),
              EduTextField(
                hintText: "Email ID/Phone Number",
                controller: _emailController,
              ),
              const SizedBox(height: 25),
              EduTextField(
                hintText: "Password",
                controller: _passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 25),
              EduTextField(
                hintText: "Re-enter Password",
                controller: _reEnterPasswordController,
                obscureText: true,
              ),
              const SizedBox(height: 50),
              EduElevatedButton(
                text: 'Create',
                onPressed: () {
                  Navigator.pushNamed(context, '/verification');
                },
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have an account?',
                    style: TextStyle(color: textLightColor, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
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
