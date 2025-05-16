import 'package:flutter/material.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120),
      body: Column(
        children: [
          // Orange header container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 30, top: 60, bottom: 40),
            decoration: const BoxDecoration(
              color: Color(0xFFE16112),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top row with logo and close icon
                Row(
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
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Let's",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const Text(
                  "Verify\nyour\nacount", // "acount" kept to match image typo
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Remaining content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "Two Factor Authentication",
                      style: TextStyle(
                        color: Color(0xFFE16112),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "You have received an e-mail which contains a code",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFFE16112), fontSize: 12),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Your email : EzzAldeen@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Enter the code you received",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20),

                    // Dashed code input style
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE16112),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        maxLength: 6,
                        style: TextStyle(
                          letterSpacing: 20,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          hintText: "- - - - - -",
                          hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 24,
                            letterSpacing: 10,
                          ),
                          border: InputBorder.none,
                          counterText: "",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    const SizedBox(height: 12),
                    const Text(
                      "Resend a code",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 12),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "change your email?",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 12),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE16112),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
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
}
