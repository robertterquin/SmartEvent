import 'package:flutter/material.dart';

class ChatWithOrganizersWidget extends StatefulWidget {
  const ChatWithOrganizersWidget({super.key});

  static const routeName = 'ChatWithOrganizers';
  static const routePath = '/chat-organizers';

  @override
  State<ChatWithOrganizersWidget> createState() => _ChatWithOrganizersWidgetState();
}

class _ChatWithOrganizersWidgetState extends State<ChatWithOrganizersWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with Organizers'),
        backgroundColor: const Color(0xFF1DD1A1),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Chat with Organizers Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}