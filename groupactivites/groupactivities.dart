import 'package:flutter/material.dart';

class GroupActivitiesPage extends StatefulWidget {
  const GroupActivitiesPage({super.key});

  @override
  State<GroupActivitiesPage> createState() => _GroupActivitiesPageState();
}

class _GroupActivitiesPageState extends State<GroupActivitiesPage> {
  bool isTennisExpanded = false;
  bool isFootballExpanded = false;
  bool isSwimmingExpanded = false;
  bool isBasketballExpanded = false;
  bool isOtherExpanded = false;

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
        title: const Text(
          'Group Activities',
          style: TextStyle(
            color: Color(0xFFE16112),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Tennis Section
              buildActivityButton(
                'Tennis',
                isExpanded: isTennisExpanded,
                onPressed:
                    () => setState(() => isTennisExpanded = !isTennisExpanded),
              ),
              if (isTennisExpanded) ...[
                buildSubItem('Teams'),
                buildSubItem('Facilities'),
                buildSubItem('Activities'),
              ],

              // Football Section
              buildActivityButton(
                'Football',
                isExpanded: isFootballExpanded,
                onPressed:
                    () => setState(
                      () => isFootballExpanded = !isFootballExpanded,
                    ),
              ),
              if (isFootballExpanded) ...[
                buildSubItem('Teams'),
                buildSubItem('Facilities'),
                buildSubItem('Activities'),
              ],

              // Swimming Section
              buildActivityButton(
                'Swimming',
                isExpanded: isSwimmingExpanded,
                onPressed:
                    () => setState(
                      () => isSwimmingExpanded = !isSwimmingExpanded,
                    ),
              ),
              if (isSwimmingExpanded) ...[
                buildSubItem('Teams'),
                buildSubItem('Facilities'),
                buildSubItem('Activities'),
              ],

              // Basketball Section
              buildActivityButton(
                'Basketball',
                isExpanded: isBasketballExpanded,
                onPressed:
                    () => setState(
                      () => isBasketballExpanded = !isBasketballExpanded,
                    ),
              ),
              if (isBasketballExpanded) ...[
                buildSubItem('Teams'),
                buildSubItem('Facilities'),
                buildSubItem('Activities'),
              ],

              // Other Section
              buildActivityButton(
                'Other',
                isExpanded: isOtherExpanded,
                onPressed:
                    () => setState(() => isOtherExpanded = !isOtherExpanded),
              ),
              if (isOtherExpanded) ...[
                buildSubItem('Teams'),
                buildSubItem('Facilities'),
                buildSubItem('Activities'),
              ],

              const SizedBox(height: 20),
              const Text(
                'Upcoming activities',
                style: TextStyle(
                  color: Color(0xFFE16112),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              buildActivityCard(),
            ],
          ),
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
            label: 'Scan QR',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget buildActivityButton(
    String label, {
    required bool isExpanded,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE16112),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Icon(
              isExpanded ? Icons.expand_less : Icons.expand_more,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSubItem(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(12),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget buildActivityCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/run_jo.jpeg',
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 12),
          const Text(
            'Amman Marathon',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(
            'Each Gram Matters',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE16112),
              minimumSize: const Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'See Details',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.fitness_center, color: Color(0xFFE16112), size: 24),
              Icon(Icons.timer, color: Color(0xFFE16112), size: 24),
              Icon(Icons.sports_handball, color: Color(0xFFE16112), size: 24),
            ],
          ),
        ],
      ),
    );
  }
}
