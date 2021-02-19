import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // itemCount: , <-- Normally we put the data array's length.
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Contact $index'),
        );
      },
    );
  }
}