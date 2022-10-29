import 'package:flutter/material.dart';
import 'package:telegram/widgets/drawer.dart';

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
        body: ListView.builder(
          itemCount: 200,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(2.0),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(""),
                radius: 25,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "User Name",
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
                  Text("User recent messages"),
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
            ),
          ),
        ),
      ),
    );
  }
}
