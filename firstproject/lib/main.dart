import 'screens/Dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Myapp()
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: "My Flutter App",
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Dashboard()
    );
  }
}

