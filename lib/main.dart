import 'package:flutter/material.dart';
import 'package:telegram/pages/chat.dart';
import 'package:telegram/pages/homepage.dart';
import 'package:telegram/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      home: const HomePage(),
      routes: {
        '/chat': (context) => const ChatPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
