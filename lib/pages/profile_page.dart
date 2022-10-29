import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pub-static.fotor.com/assets/projects/pages/d5bdd0513a0740a8a38752dbc32586d0/fotor-03d1a91a0cec4542927f53c87e0599f6.jpg")),
          title: const Text(
            "Sara",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const ListTile(
                    leading: Icon(Icons.camera_alt),
                    title: Text(
                      "Set Your Profile Photo",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "Account",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "880123456789",
                      ),
                      subtitle: Text("Change the phone number"),
                    ),
                    ListTile(
                      title: Text(
                        "@mobasaradev",
                      ),
                      subtitle: Text("username"),
                    ),
                    ListTile(
                      title: Text(
                        "Bio",
                      ),
                      subtitle: Text("Write about you"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text(
                        "Notification and Sounds",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.lock),
                      title: Text(
                        "Privacy and Security",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.donut_large_sharp),
                      title: Text(
                        "Data and Storage",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.chat_bubble),
                      title: Text(
                        "Chat Settings",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.emoji_emotions),
                      title: Text(
                        "Stickers and Emoji",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.folder_outlined),
                      title: Text(
                        "Chat Folders",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.devices),
                      title: Text(
                        "Devices",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.language),
                      title: Text(
                        "Language",
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ListTile(
                      leading: Icon(
                        Icons.workspace_premium_outlined,
                        color: Colors.deepPurple,
                      ),
                      title: Text(
                        "Telegram Premium",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        "Help",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.chat_outlined),
                      title: Text(
                        "Ask a help",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.question_mark),
                      title: Text(
                        "Telegram FAQ",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.security),
                      title: Text(
                        "Privacy Policy",
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Telegram for Android v9.0.2 (2808)",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
