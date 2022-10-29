import 'package:flutter/material.dart';

class DrawerWidgets extends StatefulWidget {
  const DrawerWidgets({super.key});

  @override
  State<DrawerWidgets> createState() => _DrawerWidgetsState();
}

class _DrawerWidgetsState extends State<DrawerWidgets> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pub-static.fotor.com/assets/projects/pages/d5bdd0513a0740a8a38752dbc32586d0/fotor-03d1a91a0cec4542927f53c87e0599f6.jpg"),
              radius: 100,
            ),
            accountName: const Text("mac R."),
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
            title: const Text(
              "New Group",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.campaign_rounded),
            title: const Text(
              "New Channel",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text(
              "Contacts",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title: const Text(
              "Calls",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text(
              "Saved Messages",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              "Settings",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.mode_night),
            title: const Text(
              "Night Mood",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
