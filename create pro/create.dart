import 'package:flutter/material.dart';
import 'package:project_flutter/create%20pro/create_ms.dart';

class FullProfileSetupPage extends StatefulWidget {
  const FullProfileSetupPage({super.key});

  @override
  State<FullProfileSetupPage> createState() => _FullProfileSetupPageState();
}

class _FullProfileSetupPageState extends State<FullProfileSetupPage> {
  String? selectedGender;
  String? selectedAge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  Image.asset("assets/images/sportify.jpeg", width: 30),
                  const SizedBox(width: 10),
                  const Text(
                    "SportiFy",
                    style: TextStyle(
                      color: Color(0xFFE16112),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Title
              const Center(
                child: Text(
                  "Create Your\npersonalized profiles",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Gender
              _sectionTitle("Your Gender"),
              _buildRadioOption("Male", selectedGender == "Male", () {
                setState(() => selectedGender = "Male");
              }),
              _buildRadioOption("Female", selectedGender == "Female", () {
                setState(() => selectedGender = "Female");
              }),

              const SizedBox(height: 20),

              // Age
              _sectionTitle("Your Age"),
              _buildRadioOption("Under 18", selectedAge == "Under 18", () {
                setState(() => selectedAge = "Under 18");
              }),
              _buildRadioOption("18 - 35", selectedAge == "18 - 35", () {
                setState(() => selectedAge = "18 - 35");
              }),
              _buildRadioOption(
                "More than 35",
                selectedAge == "More than 35",
                () {
                  setState(() => selectedAge = "More than 35");
                },
              ),

              const SizedBox(height: 20),

              // Skip button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Optional skip logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text("Skip"),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Sign Up button with navigation
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedGender != null && selectedAge != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const YourGoal(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Please select both gender and age."),
                          backgroundColor: Colors.redAccent,
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE16112),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Already have account
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const YourGoal()),
                    );
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: "Already Have Account? ",
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "Login !",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildRadioOption(String title, bool selected, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Radio<bool>(
            value: true,
            groupValue: selected,
            onChanged: (_) => onTap(),
            activeColor: Colors.white,
          ),
          Expanded(
            child: Container(
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFE16112),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
