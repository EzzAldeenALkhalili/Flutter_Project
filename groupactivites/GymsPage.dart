import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SportiFy',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const GymSearchPage(),
    );
  }
}

class GymSearchPage extends StatefulWidget {
  const GymSearchPage({super.key});

  @override
  State<GymSearchPage> createState() => _GymSearchPageState();
}

class _GymSearchPageState extends State<GymSearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> allGyms = [
    {
      "name": "Grams Gym",
      "location": "Z City",
      "status": "Visit Available",
      "subtitle": "Each Gram Matters",
      "image": "assets/images/welcome.jpeg",
    },
    {
      "name": "Golds Gym",
      "location": "U.S.A",
      "status": "Visit Available",
      "subtitle": "The Original Home of Serious Strength Training",
      "image": "assets/images/golds_gym.jpeg",
    },
  ];

  List<Map<String, String>> filteredGyms = [];

  @override
  void initState() {
    super.initState();
    filteredGyms = List.from(allGyms);
    _searchController.addListener(_filterGyms);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterGyms() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredGyms =
          allGyms.where((gym) {
            final name = gym['name']!.toLowerCase();
            final location = gym['location']!.toLowerCase();
            return name.contains(query) || location.contains(query);
          }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C2120),
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/images/sportify.jpeg',
              width: 30,
              height: 30,
              errorBuilder:
                  (context, error, stackTrace) =>
                      const Icon(Icons.error, color: Colors.orangeAccent),
            ),
            const SizedBox(width: 8),
            const Text(
              "SportiFy",
              style: TextStyle(
                color: Color(0xFFE16112),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.menu, color: Color(0xFFE16112)),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: "Search Gyms",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredGyms.length,
              itemBuilder: (context, index) {
                final gym = filteredGyms[index];
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child: Image.asset(
                          gym['image']!,
                          height: 160,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder:
                              (context, error, stackTrace) => Container(
                                height: 160,
                                color: Colors.grey[200],
                                child: const Center(
                                  child: Icon(Icons.error, color: Colors.grey),
                                ),
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gym['name']!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "${gym['location']} • ${gym['status']}",
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              gym['subtitle']!,
                              style: TextStyle(
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFE16112),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => GymInfoPage(gym: gym),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "See Detail",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.fitness_center,
                                  color: Colors.grey[600],
                                ),
                                const SizedBox(width: 5),
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey[600],
                                ),
                                const SizedBox(width: 5),
                                Icon(Icons.star, color: Colors.grey[600]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1C2120),
        selectedItemColor: const Color(0xFFE16112),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: "ScanQR",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class GymInfoPage extends StatelessWidget {
  final Map<String, String> gym;

  const GymInfoPage({super.key, required this.gym});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gym['name']!),
        backgroundColor: const Color(0xFF1C2120),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              gym['image']!,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder:
                  (context, error, stackTrace) => Container(
                    height: 250,
                    color: Colors.grey[200],
                    child: const Center(
                      child: Icon(Icons.error, color: Colors.grey),
                    ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    gym['name']!,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    gym['location']!,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    gym['subtitle']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "About this gym:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "This gym offers state-of-the-art equipment and professional trainers to help you achieve your fitness goals. Whether you're a beginner or an experienced athlete, you'll find everything you need here.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE16112),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Book a Visit",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
