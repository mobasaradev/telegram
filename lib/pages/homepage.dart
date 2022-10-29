import 'package:flutter/material.dart';
import 'package:telegram/widgets/drawer.dart';
import 'package:telegram/widgets/user_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar
        appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: const Text(
            "Telegram",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(Icons.search),
          ],
        ),

        // floating action button
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),

        // drawer
        drawer: const DrawerWidgets(),

        // body
        body: const UserList(),
      ),
    );
  }
}
