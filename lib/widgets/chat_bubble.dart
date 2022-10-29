import 'package:flutter/material.dart';

Widget chatBubble(BuildContext context, int index) {
  if (index % 2 == 0) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 200,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[200],
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(8.0),
        child: const Text("Hello buddy, How are you"),
      ),
    );
  } else {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        right: 10,
        left: 200,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.all(8.0),
        child: const Text(
          "Hey man, I'm Okay. You?",
        ),
      ),
    );
  }
}
