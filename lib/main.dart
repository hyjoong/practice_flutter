import 'package:flutter/material.dart';
import 'package:hello_world/screen/main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    ),
  );
}

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'asset/img/hamster.png',
//             ),
//           CircularProgressIndicator(
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }

