import 'package:flutter/material.dart';
import 'package:cucu/components/ru_button.dart';
import 'package:cucu/components/ru_textfield.dart'; // Import RUTextfield

class Sample extends StatefulWidget {
  const Sample({super.key});

  @override
  State<Sample> createState() => _Sample();
}

class _Sample extends State<Sample> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Log In / Sign Up Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Log In'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 1500,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                                text: "Login",
                                onTap: () {
                                  // Handle login action
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Sign Up'),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 1500,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              const Text('Log In'),

                                    const SizedBox(height:20),

                                 const Text('Return to your space, revisit what you love, and rekindle your connections '),

                              const SizedBox(height:20),
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
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
