import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GymInfoPage extends StatelessWidget {
  const GymInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white70,
        currentIndex: 0,
        onTap: (index) {}, // Add navigation logic later
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepOrange, Colors.orangeAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Center(
                child: Text(
                  "Gold's Gym",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Carousel Slider
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.85,
              ),
              items:
                  [
                    "assets/images/golds_gym.jpeg",
                    "assets/images/gym2.jpeg",
                    "assets/images/welcome.jpeg",
                  ].map((item) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  }).toList(),
            ),

            const SizedBox(height: 20),

            // Gym Info Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                InfoColumn(icon: Icons.star, label: "Rating\n5/5"),
                InfoColumn(icon: Icons.transgender, label: "Mixed"),
                InfoColumn(icon: Icons.location_on, label: "Amman"),
              ],
            ),

            const SizedBox(height: 20),

            // Facilities Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FacilityIcon(icon: Icons.fitness_center),
                FacilityIcon(icon: Icons.hot_tub),
                FacilityIcon(icon: Icons.info_outline),
              ],
            ),

            const SizedBox(height: 30),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Subscriptions:",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            const SubscriptionButton(text: "1 month : 65 JOD"),
            const SubscriptionButton(text: "Special offer: 100 days / 100 JOD"),
            const SubscriptionButton(text: "6 months : 250 JOD"),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class InfoColumn extends StatelessWidget {
  final IconData icon;
  final String label;

  const InfoColumn({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.orange, size: 28),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class FacilityIcon extends StatelessWidget {
  final IconData icon;

  const FacilityIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: Colors.orange.withOpacity(0.1),
      child: Icon(icon, color: Colors.orange, size: 30),
    );
  }
}

class SubscriptionButton extends StatelessWidget {
  final String text;

  const SubscriptionButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(30),
      ),
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
