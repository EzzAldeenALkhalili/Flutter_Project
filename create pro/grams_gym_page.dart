import 'package:flutter/material.dart';
import 'package:project_flutter/exersies/Bodybuilding.dart';
import 'package:project_flutter/exersies/my_bookings_page.dart';
import 'package:project_flutter/fitnessplans/fitnessplan_screen.dart';
import 'package:project_flutter/groupactivites/AchievementsPage%20.dart';
import 'package:project_flutter/groupactivites/GymsPage.dart';
import 'package:project_flutter/groupactivites/groupactivities.dart';
import 'package:project_flutter/welcome2/login_screen.dart';
import '../welcome3/introscreen.dart';
// Import the new GroupActivitiesPage

class GramsGymPage extends StatefulWidget {
  const GramsGymPage({super.key});

  @override
  State<GramsGymPage> createState() => _GramsGymPageState();
}

class _GramsGymPageState extends State<GramsGymPage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 3) {
      // Profile tab
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Bodybuilding()),
      );
    }
  }

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
      drawer: Drawer(
        backgroundColor: const Color(0xFF1C2120),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF1C2120)),
              child: Center(
                child: Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Color(0xFFE16112),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            _buildDrawerButton(
              Icons.fitness_center,
              'Gyms',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GymSearchPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 5),
            _buildDrawerButton(
              Icons.assignment,
              'Plans',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FitnessPlansScreen(),
                  ),
                );
              },
            ),
            _buildDrawerButton(
              Icons.group,
              'Group Activities',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GroupActivitiesPage(),
                  ),
                );
              },
            ),
            _buildDrawerButton(
              Icons.bookmark,
              'My bookings',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyBookingsPage(),
                  ),
                );
              },
            ),

            _buildDrawerButton(
              Icons.emoji_events,
              'Achievements',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AchievementsPage(),
                  ),
                );
              },
            ),
            _buildDrawerButton(Icons.shopping_cart, 'Cart'),
            _buildDrawerButton(Icons.subscriptions, 'Subscriptions'),
            const Divider(color: Colors.white54),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE16112),
                ),
                child: const Text(
                  'Need help?',
                  style: TextStyle(color: Color(0xFF1C2120)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text(
                  'Log out',

                  style: TextStyle(color: Color.fromARGB(255, 199, 40, 40)),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gym Card
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          child: Image.asset(
                            'assets/images/grams.jpeg',
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Grams Gym",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.orange,
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      "700 m away",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      "Valet Available",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  "Each Gram Matters",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFE16112),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: const Text(
                                      "See Detail",
                                      style: TextStyle(
                                        color: Color(0xFF1C2120),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(
                                      Icons.fitness_center,
                                      color: Color(0xFFE16112),
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.timer,
                                      color: Color(0xFFE16112),
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.sports_handball,
                                      color: Color(0xFFE16112),
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildSectionCard(
                    title: "Personal Trainer",
                    subtitle: "Max 1 guest",
                    features: [
                      "Personalized Diet Plan",
                      "Personalized Workout Plan",
                    ],
                    price: "\$50/week | Reserve & Book Now",
                    imagePath: 'assets/images/pstrainer.jpeg',
                    sideLabel: "Enjoy These Benefits",
                  ),
                  const SizedBox(height: 20),
                  buildSectionCard(
                    title: "Available Amenities",
                    subtitle: "Max 20 guests",
                    features: ["Swimming Pool", "Hot Jacuzzi", "Sauna"],
                    price: "\$50/Month | Reserve & Book Now",
                    imagePath: 'assets/images/amen.jpeg',
                    sideLabel: "Enjoy These Benefits",
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE16112),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1C2120),
        selectedItemColor: const Color(0xFFE16112),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan QR',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildDrawerButton(
    IconData icon,
    String label, {
    VoidCallback? onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: ElevatedButton.icon(
        onPressed: onPressed ?? () {},
        icon: Icon(icon, color: Colors.black),
        label: Text(label, style: const TextStyle(color: Colors.black)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE16112),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
      ),
    );
  }

  Widget buildSectionCard({
    required String title,
    required String subtitle,
    required List<String> features,
    required String price,
    required String imagePath,
    required String sideLabel,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE16112)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            color: const Color(0xFFE16112),
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                sideLabel,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        features.map((feature) {
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 2),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE16112),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              feature,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    price,
                    style: const TextStyle(
                      color: Color(0xFFE16112),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
