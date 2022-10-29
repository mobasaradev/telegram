import 'package:flutter/material.dart';

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
        appBar: AppBar(
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
        body: const Center(
          child: Text("hi"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  child: FlutterLogo(
                    size: 42.0,
                  ),
                ),
                accountName: const Text("sara k."),
                accountEmail: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Set Emoji Status"),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: const Text("New Group"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.campaign_rounded),
                title: const Text("New Channel"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text("Contacts"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.call),
                title: const Text("Calls"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.bookmark),
                title: const Text("Saved Messages"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.mode_night),
                title: const Text("Night Mood"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
