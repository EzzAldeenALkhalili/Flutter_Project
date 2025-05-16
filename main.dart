// import 'package:flutter/material.dart';
// import '../welcome3/introscreen.dart';
// // import 'package:project_flutter/welcome/introscreen.dart';
// // import 'package:project_flutter/welcome/introscreen2.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SportiFy',
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//         scaffoldBackgroundColor: const Color(0xFF1C2120),
//       ),
//       home: const GymDetailsScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class GymDetailsScreen extends StatefulWidget {
//   const GymDetailsScreen({super.key});

//   @override
//   State<GymDetailsScreen> createState() => _GymDetailsScreenState();
// }

// class _GymDetailsScreenState extends State<GymDetailsScreen> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF1C2120),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF1C2120),
//         elevation: 0,
//         title: Row(
//           children: [
//             Image.asset('assets/images/sportify.jpeg', width: 32, height: 32),
//             const SizedBox(width: 8),
//             const Text(
//               "SportiFy",
//               style: TextStyle(
//                 color: Color(0xFFE16112),
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.search, color: Color(0xFFE16112)),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.menu, color: Color(0xFFE16112)),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(16),
//                             bottomLeft: Radius.circular(16),
//                           ),
//                           child: Image.asset(
//                             'assets/images/grams.jpeg',
//                             width: 140,
//                             height: 140,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Expanded(
//                           child: Padding(
//                             padding: const EdgeInsets.all(12),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   "Grams Gym",
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 8),
//                                 Row(
//                                   children: const [
//                                     Icon(
//                                       Icons.location_on,
//                                       color: Colors.orange,
//                                       size: 16,
//                                     ),
//                                     SizedBox(width: 4),
//                                     Text(
//                                       "700 m away",
//                                       style: TextStyle(fontSize: 12),
//                                     ),
//                                     SizedBox(width: 8),
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.orange,
//                                       size: 16,
//                                     ),
//                                     SizedBox(width: 4),
//                                     Text(
//                                       "Valet Available",
//                                       style: TextStyle(fontSize: 12),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 8),
//                                 const Text(
//                                   "Each Gram Matters",
//                                   style: TextStyle(color: Colors.grey),
//                                 ),
//                                 const SizedBox(height: 8),
//                                 SizedBox(
//                                   width: double.infinity,
//                                   child: ElevatedButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) => const MyApp(),
//                                         ),
//                                       );
//                                     },
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor: const Color(0xFFE16112),
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                     child: const Text(
//                                       "See Detail",
//                                       style: TextStyle(color: Colors.black),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 8),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: const [
//                                     Icon(
//                                       Icons.fitness_center,
//                                       color: Colors.orange,
//                                       size: 20,
//                                     ),
//                                     Icon(
//                                       Icons.timer,
//                                       color: Colors.orange,
//                                       size: 20,
//                                     ),
//                                     Icon(
//                                       Icons.sports_handball,
//                                       color: Colors.orange,
//                                       size: 20,
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   buildSectionCard(
//                     title: "Personal Trainer",
//                     subtitle: "Max 1 guest",
//                     features: [
//                       "Personalized Diet Plan",
//                       "Personalized Workout Plan",
//                     ],
//                     price: "\$50/week | Reserve & Book Now",
//                     imagePath: 'assets/images/pstrainer.jpeg',
//                     sideLabel: "Enjoy These Benefits",
//                   ),

//                   const SizedBox(height: 20),

//                   buildSectionCard(
//                     title: "Available Amenities",
//                     subtitle: "Max 20 guests",
//                     features: ["Swimming Pool", "Hot Jacuzzi", "Sauna"],
//                     price: "\$50/Month | Reserve & Book Now",
//                     imagePath: 'assets/images/amen.jpeg',
//                     sideLabel: "Enjoy These Benefits",
//                   ),

//                   const SizedBox(height: 20), // Space before the Next button
//                 ],
//               ),
//             ),
//           ),

//           // Next Button
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             child: SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => OnboardingScreen()),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFFE16112),
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 child: const Text(
//                   "Next",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: const Color(0xFF1C2120),
//         selectedItemColor: const Color(0xFFE16112),
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.qr_code_scanner),
//             label: 'Scan QR',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }

//   Widget buildSectionCard({
//     required String title,
//     required String subtitle,
//     required List<String> features,
//     required String price,
//     required String imagePath,
//     required String sideLabel,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 255, 255, 255),
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(color: const Color(0xFFE16112)),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
//             color: const Color(0xFFE16112),
//             child: RotatedBox(
//               quarterTurns: -1,
//               child: Text(
//                 sideLabel,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 4),
//                   Text(
//                     subtitle,
//                     style: const TextStyle(color: Colors.black54, fontSize: 12),
//                   ),
//                   const SizedBox(height: 12),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children:
//                         features.map((feature) {
//                           return Container(
//                             margin: const EdgeInsets.symmetric(vertical: 2),
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 10,
//                               vertical: 4,
//                             ),
//                             decoration: BoxDecoration(
//                               color: const Color(0xFFE16112),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: Text(
//                               feature,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     price,
//                     style: const TextStyle(
//                       color: Color(0xFFE16112),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           ClipRRect(
//             borderRadius: const BorderRadius.only(
//               topRight: Radius.circular(16),
//               bottomRight: Radius.circular(16),
//             ),
//             child: Image.asset(
//               imagePath,
//               width: 100,
//               height: 140,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:project_flutter/welcome3/introscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SportiFy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFE16112),
        colorScheme: ColorScheme.light(primary: Color(0xFFE16112)),
      ),
      home: const OnboardingScreen(),
    );
  }
}
