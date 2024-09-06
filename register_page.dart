
import 'package:flutter/material.dart';
import 'package:cucu/components/ru_button.dart';
import 'package:cucu/components/ru_textfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1500,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Create an account to join our community and enjoy the benefits.',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),
              RUTextfield(
                hintText: "Email",
                obscuredText: false,
                controller: _emailController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintTextColor: Colors.white,
              ),
              const SizedBox(height: 16),
              RUTextfield(
                hintText: "Password",
                obscuredText: true,
                controller: _passwordController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                hintTextColor: Colors.white,
              ),
              const SizedBox(height: 24),
              RUButton(
                text: "Sign Up",
                onTap: () {
                  // Handle sign-up action
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
