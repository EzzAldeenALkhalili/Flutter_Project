import 'package:flutter/material.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2120),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C2120),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFE16112)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/sportify.jpeg'),
            ),
            const Text("SportiFy", style: TextStyle(color: Color(0xFFE16112))),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Color(0xFFE16112)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome back Ezz Aldeen',
                style: TextStyle(color: Color(0xFFE16112), fontSize: 20),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/general.jpeg'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Activity Tracking',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE16112),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Plan: General Exercise',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildActivityCard(
                icon: Icons.directions_run,
                title: 'Run',
                progress: 0.3,
                subtitle: '6.2/10 KM',
                color: Colors.orangeAccent,
              ),
              _buildActivityCard(
                icon: Icons.directions_walk,
                title: 'Step',
                progress: 0.15,
                subtitle: '1200/8000 steps',
                color: Colors.redAccent,
              ),
              _buildActivityCard(
                icon: Icons.fitness_center,
                title: 'Gym',
                progress: 0.5,
                subtitle: '2/4 hours',
                color: Colors.blueAccent,
              ),
              _buildActivityCard(
                icon: Icons.local_fire_department,
                title: 'Calories',
                progress: 0.64,
                subtitle: '3200/5000 burned',
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE16112),
        onPressed: () {},
        child: const Icon(Icons.fitness_center, color: Colors.white),
      ),
    );
  }

  Widget _buildActivityCard({
    required IconData icon,
    required String title,
    required double progress,
    String? subtitle,
    required Color color,
  }) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            LinearProgressIndicator(
              value: progress,
              color: color,
              backgroundColor: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
