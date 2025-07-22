import 'package:flutter/material.dart';

class ManageProfileWidget extends StatefulWidget {
  const ManageProfileWidget({super.key});

  static const routeName = 'ManageProfile';
  static const routePath = '/manage-profile';

  @override
  State<ManageProfileWidget> createState() => _ManageProfileWidgetState();
}

class _ManageProfileWidgetState extends State<ManageProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Profile'),
        backgroundColor: const Color(0xFF1DD1A1),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Manage Profile Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}