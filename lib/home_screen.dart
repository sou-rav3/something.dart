import 'package:flutter/material.dart';
import 'package:something/profile_screen.dart';
import 'package:something/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 33),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(
                "Sour av",
                style: TextStyle(fontSize: 50),
              ),
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.person, color: Colors.lightGreen, size: 33,),
                          SizedBox(width: 33),
                          Text('Profile', style: TextStyle(fontSize: 33, color: Colors.lightGreen),),
                        ],
                      ),

                    ),
                  ],
                ),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingScreen(),
                  ),
                );
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen),
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
