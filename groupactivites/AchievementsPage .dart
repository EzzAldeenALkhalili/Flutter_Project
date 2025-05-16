import 'package:flutter/material.dart';

class AchievementsPage extends StatelessWidget {
  const AchievementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF1C2120,
      ), // Using your app's dark background
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C2120),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFE16112)),
          onPressed: () => Navigator.pop(context),
        ),
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
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Title
            const Text(
              'Achievements',
              style: TextStyle(
                color: Color(0xFFE16112),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Achievement Image
            Image.asset(
              'assets/images/Achievements.jpeg',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            // Achievement Cards
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  buildAchievementCard(
                    title: 'First 5K',
                    subtitle: 'Complete your first 5-kilometer run/walk.',
                    value: 5,
                    max: 5,
                    icon: Icons.directions_run,
                    color: const Color(0xFFE16112),
                  ),
                  const SizedBox(height: 12),
                  buildAchievementCard(
                    title: 'Weekly Warrior',
                    subtitle: 'Work out every day for a full week.',
                    value: 7,
                    max: 7,
                    icon: Icons.calendar_today,
                    color: Colors.blueAccent,
                  ),
                  const SizedBox(height: 12),
                  buildAchievementCard(
                    title: '100 KM Club',
                    subtitle: 'Run, bike, or swim a total of 100 kilometers.',
                    value: 81,
                    max: 100,
                    icon: Icons.directions_bike,
                    color: Colors.greenAccent,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1C2120),
        selectedItemColor: const Color(0xFFE16112),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'ScanQR',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget buildAchievementCard({
    required String title,
    required String subtitle,
    required int value,
    required int max,
    required IconData icon,
    required Color color,
  }) {
    double percentage = value / max;
    bool isComplete = value >= max;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color),
              const SizedBox(width: 8),
              Text(
                '$title ${value}/${max}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Icon(
                isComplete ? Icons.check_circle : Icons.check_box_outline_blank,
                color: isComplete ? Colors.green : Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(subtitle),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(color),
              minHeight: 6,
            ),
          ),
        ],
      ),
    );
  }
}
