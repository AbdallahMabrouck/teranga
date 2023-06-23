import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String id = "home-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.white70,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            "Teranga",
            style: TextStyle(
                letterSpacing: 2,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
