// import 'package:flutter/material.dart';
// import 'package:project_flutter/main.dart'; // Import GymDetailsScreen

// class IntroScreen3 extends StatelessWidget {
//   const IntroScreen3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image
//           SizedBox.expand(
//             child: Image.asset(
//               'assets/images/welcome3.jpeg',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned.fill(
//             child: SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 24),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 20),
//                     Row(
//                       children: [
//                         Image.asset(
//                           'assets/images/sportify.jpeg',
//                           width: 32,
//                           height: 32,
//                         ),
//                         const SizedBox(width: 8),
//                         const Text(
//                           "SportiFy",
//                           style: TextStyle(
//                             color: Colors.orange,
//                             fontSize: 22,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     const Text(
//                       "WELCOME\nTO OUR FITNESS APP",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         letterSpacing: 1.2,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     const Spacer(),
//                     Container(
//                       width: double.infinity,
//                       padding: const EdgeInsets.all(12),
//                       decoration: BoxDecoration(
//                         color: Colors.orange.withOpacity(0.85),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: const Text(
//                         "NO PRESSURE, NO LIMITS. JUST PLAY, "
//                         "TRAIN, AND EXPLORE - ANY SPORT, "
//                         "ANYTIME, ANYWHERE",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 14,
//                           letterSpacing: 1.1,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: List.generate(3, (index) {
//                         return Container(
//                           margin: const EdgeInsets.symmetric(horizontal: 4),
//                           width: index == 0 ? 14 : 8,
//                           height: 8,
//                           decoration: BoxDecoration(
//                             color:
//                                 index == 0
//                                     ? Colors.orange
//                                     : Colors.orange.withOpacity(0.4),
//                             borderRadius: BorderRadius.circular(4),
//                           ),
//                         );
//                       }),
//                     ),
//                     const SizedBox(height: 20),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const GymDetailsScreen(),
//                             ),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.orange,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 24,
//                             vertical: 12,
//                           ),
//                         ),
//                         child: const Text(
//                           "Get Started",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
