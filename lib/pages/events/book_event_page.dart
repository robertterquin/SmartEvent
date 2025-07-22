import 'package:flutter/material.dart';

class BookEventPage extends StatefulWidget {
  const BookEventPage({super.key});

  static const routeName = 'BookEvent';
  static const routePath = '/book-event';

  @override
  State<BookEventPage> createState() => _BookEventPageState();
}

class _BookEventPageState extends State<BookEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Event'),
        backgroundColor: const Color(0xFF1DD1A1),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today,
              size: 100,
              color: Color(0xFF1DD1A1),
            ),
            SizedBox(height: 20),
            Text(
              'Book Event',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Event booking page',
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