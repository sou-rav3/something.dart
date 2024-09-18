import 'package:flutter/material.dart';
import 'package:something/home_screen.dart';
import 'package:something/profile_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'Setting',
          style: TextStyle(fontSize: 33),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello I am Settings',
              style: TextStyle(fontSize: 33),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen),
              child: const Text('Go to Profile'),
            ),
            const SizedBox(height: 08),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen),
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
