import 'package:flutter/material.dart';

class BookEventWidget extends StatefulWidget {
  const BookEventWidget({super.key});

  static const routeName = 'BookEvent';
  static const routePath = '/book-event';

  @override
  State<BookEventWidget> createState() => _BookEventWidgetState();
}

class _BookEventWidgetState extends State<BookEventWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Event'),
        backgroundColor: const Color(0xFF1DD1A1),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Book Event Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}