import 'package:flutter/material.dart';

class ManageProfilePage extends StatefulWidget {
  const ManageProfilePage({super.key});

  static const routeName = 'ManageProfile';
  static const routePath = '/profile';

  @override
  State<ManageProfilePage> createState() => _ManageProfilePageState();
}

class _ManageProfilePageState extends State<ManageProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Profile'),
        backgroundColor: const Color(0xFF1DD1A1),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 100,
              color: Color(0xFF1DD1A1),
            ),
            SizedBox(height: 20),
            Text(
              'Manage Profile',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Profile management page',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}