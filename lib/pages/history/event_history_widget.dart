import 'package:flutter/material.dart';

class EventHistoryWidget extends StatefulWidget {
  const EventHistoryWidget({super.key});

  static const routeName = 'EventHistory';
  static const routePath = '/event-history';

  @override
  State<EventHistoryWidget> createState() => _EventHistoryWidgetState();
}

class _EventHistoryWidgetState extends State<EventHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event History'),
        backgroundColor: const Color(0xFF1DD1A1),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Event History Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}