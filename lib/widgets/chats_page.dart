import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:it_lectory_3/pages/students/chats.dart';
import 'package:it_lectory_3/widgets/appbar_widget.dart';
import 'package:it_lectory_3/widgets/chats_widget.dart';
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 35,),
                    AppBarWidget(text: 'Чаты', isBack: false),
                    const SizedBox(
                      height: 55,
                    ),
                  ChatCardWidget(name: 'Студент 1', indexMessage: 5,
                      subtitle: 'Новое сообщение'
                  ),
                    const SizedBox(height: 25,),
                    ChatCardWidget(name: 'Студент 2', indexMessage: 1,
                    subtitle: 'Новое сообщение',),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
