import 'package:flutter/material.dart';
import 'package:project_flutter/create%20pro/create.dart';
// Make sure the path is correct

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120),
      body: Column(
        children: [
          // Orange Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 30,
              right: 20,
              top: 60,
              bottom: 30,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFE16112),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Row(
              children: [
                Image.asset("assets/images/sportify.jpeg", width: 30),
                const SizedBox(width: 10),
                const Text(
                  "SportiFy",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Let's\nCreate\nYour Account",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),

                    _buildInput("Full Name", Icons.person),
                    const SizedBox(height: 15),
                    _buildInput("Email Address", Icons.email),
                    const SizedBox(height: 15),
                    _buildInput("Password", Icons.lock, isPassword: true),
                    const SizedBox(height: 15),
                    _buildInput(
                      "Retype Password",
                      Icons.lock_outline,
                      isPassword: true,
                    ),
                    const SizedBox(height: 15),

                    Row(
                      children: [
                        Checkbox(
                          value: agreeToTerms,
                          onChanged: (value) {
                            setState(() => agreeToTerms = value ?? false);
                          },
                          checkColor: Colors.black,
                          activeColor: Colors.orange,
                        ),
                        const Flexible(
                          child: Text(
                            "I agree to the Terms & Privacy",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    ElevatedButton(
                      onPressed:
                          agreeToTerms
                              ? () {
                                // Navigate to FullProfileSetupPage
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            const FullProfileSetupPage(),
                                  ),
                                );
                              }
                              : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE16112),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => const FullProfileSetupPage(),
                            ),
                          );
                        },
                        child: const Text.rich(
                          TextSpan(
                            text: "Have an account? ",
                            style: TextStyle(color: Colors.white),
                            children: [
                              TextSpan(
                                text: "Sign In",
                                style: TextStyle(color: Colors.redAccent),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInput(String hint, IconData icon, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white70),
        prefixIcon: Icon(icon, color: Colors.orange),
        filled: true,
        fillColor: const Color(0xFF4A4A4A),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
