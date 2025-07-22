import 'package:flutter/material.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  static const routeName = 'Notifications';
  static const routePath = '/notifications';

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: const Color(0xFF1DD1A1),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Notifications Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}