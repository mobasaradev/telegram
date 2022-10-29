import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 200,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
        child: ListTile(
          onTap: () => Navigator.of(context).pushNamed('/chat'),
          contentPadding: const EdgeInsets.all(2.0),
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://pub-static.fotor.com/assets/projects/pages/d5bdd0513a0740a8a38752dbc32586d0/fotor-03d1a91a0cec4542927f53c87e0599f6.jpg"),
            radius: 20,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Sara k",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                "08:30 PM",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("sara's recent messages"),
              Chip(
                label: Text(
                  "4",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                backgroundColor: Colors.blue,
                padding: EdgeInsets.all(1),
              )
            ],
          ),
          shape: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
        ),
      ),
    );
  }
}
