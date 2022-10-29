import 'package:flutter/material.dart';
import 'package:telegram/widgets/chat_bubble.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: const Padding(
          padding: EdgeInsets.all(6.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://pub-static.fotor.com/assets/projects/pages/d5bdd0513a0740a8a38752dbc32586d0/fotor-03d1a91a0cec4542927f53c87e0599f6.jpg"),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sara K.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Last seen recently",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.call,
            color: Colors.grey[600],
            size: 22,
          ),
          const SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.grey[600],
            size: 22,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: ListView.builder(
              itemCount: 200,
              itemBuilder: (context, index) => chatBubble(context, index),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                const Icon(Icons.emoji_emotions_outlined),
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(),
                )),
                const Icon(Icons.attachment),
                const SizedBox(
                  width: 8,
                ),
                const Icon(Icons.keyboard_voice),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
