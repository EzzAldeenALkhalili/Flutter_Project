import 'package:flutter/material.dart';

class GymServicesPage extends StatelessWidget {
  const GymServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          // العنوان
          Container(
            color: Color(0xFFFF6D00),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: const Center(
              child: Text(
                "Golds Gym",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // صورة الجيم
          Image.asset("assets/gym.jpg"),

          const SizedBox(height: 10),

          // المعلومات الأساسية
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.star, color: Colors.orange),
              Text(
                "Rating\n5/5",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              Icon(Icons.transgender, color: Colors.orange),
              Text("mixed", style: TextStyle(color: Colors.white)),
              Icon(Icons.location_on, color: Colors.orange),
              Text("Amman", style: TextStyle(color: Colors.white)),
            ],
          ),

          const SizedBox(height: 10),

          // العنوان الفرعي
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Services:",
              style: TextStyle(
                fontSize: 18,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // الخدمات
          const ServiceTag(label: "Sauna", icon: Icons.hot_tub),
          const ServiceTag(
            label: "Personal Trainer",
            icon: Icons.fitness_center,
          ),
          const ServiceTag(label: "Swimming pool entry", icon: Icons.pool),

          const Spacer(),

          // الخريطة
          Container(
            height: 180,
            width: double.infinity,
            color: Colors.white,
            child: Center(child: Text("Map goes here")),
          ),
        ],
      ),
    );
  }
}

class ServiceTag extends StatelessWidget {
  final String label;
  final IconData icon;

  const ServiceTag({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFFF6D00),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
