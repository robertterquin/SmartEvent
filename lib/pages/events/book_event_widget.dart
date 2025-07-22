import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookEventWidget extends StatefulWidget {
  const BookEventWidget({super.key});

  static const routeName = 'BookEvent';
  static const routePath = '/book-event';

  @override
  State<BookEventWidget> createState() => _BookEventWidgetState();
}

class _BookEventWidgetState extends State<BookEventWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Book Event'),
        backgroundColor: const Color(0xFF1DD1A1),
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(context),
      body: const Center(
        child: Text(
          'Book Event Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Header with app logo and title
          Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1DD1A1), Color(0xFF00D2FF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // App Logo
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.event_available,
                          size: 40,
                          color: Color(0xFF1DD1A1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'SMART EVENT',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Text(
                      'Your Event Management',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Navigation items
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildDrawerItem(
                  icon: Icons.home,
                  title: 'Home',
                  onTap: () {
                    Navigator.pop(context);
                    context.go('/');
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.person,
                  title: 'Manage Profile',
                  onTap: () {
                    Navigator.pop(context);
                    context.go('/manage-profile');
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.calendar_month,
                  title: 'Book Event',
                  onTap: () {
                    Navigator.pop(context);
                    // Already on book event page
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.chat,
                  title: 'Chat with Organizers',
                  onTap: () {
                    Navigator.pop(context);
                    context.go('/chat-organizers');
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  onTap: () {
                    Navigator.pop(context);
                    context.go('/notifications');
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.history,
                  title: 'Event History',
                  onTap: () {
                    Navigator.pop(context);
                    context.go('/event-history');
                  },
                ),
                const Divider(),
                _buildDrawerItem(
                  icon: Icons.logout,
                  title: 'Logout',
                  onTap: () {
                    Navigator.pop(context);
                    context.go('/login');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey[700],
        size: 24,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[800],
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
    );
  }
}