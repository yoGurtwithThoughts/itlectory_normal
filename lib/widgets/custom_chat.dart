import 'package:flutter/material.dart';
import 'package:it_lectory_3/core/chats_model.dart';
import 'dart:io';

class CustomMessageWidget extends StatelessWidget {
  final Message message;

  const CustomMessageWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.sender == 'student' ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 300,
        ),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(53, 51, 51, 1),
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
            if (message.imageUrl != null) ...[
              SizedBox(height: 5),
              Image.network(message.imageUrl!, width: 100, height: 100, fit: BoxFit.cover),             ],
            if (message.filePath != null) ...[
              SizedBox(height: 5),
              Text(
                'Файл: ${message.filePath}',
                style: TextStyle(color: Colors.white),
              ),
            ],
            if (message.audioPath != null) ...[
              SizedBox(height: 5),
              Text(
                'Аудио: ${message.audioPath}',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ],
        ),
      ),
    );
  }
}