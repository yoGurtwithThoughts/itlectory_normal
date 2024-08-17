import 'package:flutter/material.dart';
import 'package:it_lectory_3/core/chats_model.dart';
import 'dart:io';


class CustomMessageWidget1 extends StatelessWidget {
  final Message message;
  final Function(int) onReply;

  const CustomMessageWidget1({Key? key, required this.message, required this.onReply}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.sender == 'teacher' ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 300,
        ),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(40, 39, 39, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.sender,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              message.content,
              style: TextStyle(color: Colors.white),
            ),

          ],
        ),
      ),
    );
  }
}