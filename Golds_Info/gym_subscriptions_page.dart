import 'package:flutter/material.dart';

class GymSubscriptionsPage extends StatelessWidget {
  const GymSubscriptionsPage({super.key});

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

          // عنوان الاشتراكات
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Subscriptions:",
              style: TextStyle(
                fontSize: 18,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // الاشتراكات
          const SubscriptionOption(text: "1 month : 65 JOD"),
          const SubscriptionOption(text: "Special offer: 100 days / 100 JOD"),
          const SubscriptionOption(text: "6 months : 250 JOD"),

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

class SubscriptionOption extends StatelessWidget {
  final String text;

  const SubscriptionOption({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        color: Color(0xFFFF6D00),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
