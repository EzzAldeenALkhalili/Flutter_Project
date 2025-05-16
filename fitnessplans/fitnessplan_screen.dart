import 'package:flutter/material.dart';
import 'package:project_flutter/exersies/Bodybuilding.dart';
import 'package:project_flutter/fitnessplans/sports_dashboard_screen.dart';
import 'package:project_flutter/fitnessplans/weight_loss_screen.dart';
// Import the SportEducation screen

class FitnessPlansScreen extends StatelessWidget {
  const FitnessPlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C2120),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFFE16112)),
        title: Row(
          children: [
            Image.asset('assets/images/sportify.jpeg', width: 32, height: 32),
            const SizedBox(width: 8),
            const Text(
              "SportiFy",
              style: TextStyle(
                color: Color(0xFFE16112),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Fitness Plans",
              style: TextStyle(
                color: Color(0xFFE16112),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),

            Image.asset(
              'assets/images/plans.jpeg',
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Color(0xFFE16112),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                "Choose Your Plan",
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 24),

            // Weight Loss Button
            buildPlanButton(
              context,
              "Weight Loss",
              Icons.monitor_weight,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WeLose()),
                );
              },
            ),
            const SizedBox(height: 12),

            // Bodybuilding Button
            buildPlanButton(
              context,
              "Bodybuilding",
              Icons.fitness_center,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bodybuilding()),
                );
              },
            ),
            const SizedBox(height: 12),

            // Sport Education Button
            buildPlanButton(
              context,
              "Sport Education",
              Icons.school,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SportEducation(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),

            // General Exercise Button
            buildPlanButton(
              context,
              "General Exercise",
              Icons.directions_run,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SportEducation(),
                  ),
                );
                // Add navigation to GeneralExercise screen when created
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPlanButton(
    BuildContext context,
    String title,
    IconData icon, {
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE16112), width: 2),
        ),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFFE16112)),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFFE16112),
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
