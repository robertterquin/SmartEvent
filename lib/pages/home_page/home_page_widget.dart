import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static const routeName = 'HomePage';
  static const routePath = '/';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Event'),
        backgroundColor: const Color(0xFF1DD1A1),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              context.go('/login');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.event,
              size: 100,
              color: Color(0xFF1DD1A1),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Smart Event!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You have successfully logged in.',
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
