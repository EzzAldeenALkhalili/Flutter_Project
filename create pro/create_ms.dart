import 'package:flutter/material.dart';
import 'package:project_flutter/create%20pro/grams_gym_page.dart';

class YourGoal extends StatelessWidget {
  const YourGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  SizedBox(width: 8),
                  Text(
                    "SportiFy",
                    style: TextStyle(
                      color: Color(0xFFE16112),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              const Center(
                child: Text(
                  "Create Your\npersonalized profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Your fitness goals",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 20),

              const YourGoalOptions(),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => const GramsGymPage()),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE16112),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Already Have Account? Login !",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
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
}

class YourGoalOptions extends StatefulWidget {
  const YourGoalOptions({super.key});

  @override
  State<YourGoalOptions> createState() => _YourGoalOptionsState();
}

class _YourGoalOptionsState extends State<YourGoalOptions> {
  bool buildMuscles = false;
  bool loseWeight = false;
  bool liftingFitness = false;
  bool otherActivities = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildOption("Build Muscles", buildMuscles, (value) {
          setState(() => buildMuscles = value ?? false);
        }),
        buildOption("Lose/Gain Weight", loseWeight, (value) {
          setState(() => loseWeight = value ?? false);
        }),
        buildOption("Lifting Fitness", liftingFitness, (value) {
          setState(() => liftingFitness = value ?? false);
        }),
        buildOption("Other Sports Activities", otherActivities, (value) {
          setState(() => otherActivities = value ?? false);
        }),
      ],
    );
  }

  Widget buildOption(String title, bool value, Function(bool?) onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Checkbox(
            value: value,
            activeColor: const Color(0xFFE16112),
            onChanged: onChanged,
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
