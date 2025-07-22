import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

// Import all page widgets
import 'pages/home/home_page_widget.dart';
import 'pages/auth/login_page_widget.dart';
import 'pages/auth/register_page_widget.dart';
import 'pages/profile/manage_profile_widget.dart';
import 'pages/events/book_event_widget.dart';
import 'pages/chat/chat_organizers_widget.dart';
import 'pages/notifications/notifications_widget.dart';
import 'pages/history/event_history_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPageWidget(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPageWidget(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePageWidget(),
      ),
      GoRoute(
        path: '/manage-profile',
        builder: (context, state) => const ManageProfileWidget(),
      ),
      GoRoute(
        path: '/book-event',
        builder: (context, state) => const BookEventWidget(),
      ),
      GoRoute(
        path: '/chat-organizers',
        builder: (context, state) => const ChatWithOrganizersWidget(),
      ),
      GoRoute(
        path: '/notifications',
        builder: (context, state) => const NotificationsWidget(),
      ),
      GoRoute(
        path: '/event-history',
        builder: (context, state) => const EventHistoryWidget(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Smart Event',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      routerConfig: _router,
    );
  }
}
