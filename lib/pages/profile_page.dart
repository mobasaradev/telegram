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
        body: Column(
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
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Account",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
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
                )),
          ],
        ),
      ),
    );
  }
}
