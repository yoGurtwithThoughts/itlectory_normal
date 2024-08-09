import 'package:flutter/material.dart';
import 'package:it_lectory_copy_2/widgets/dinamic_Text.dart';
import 'package:it_lectory_copy_2/widgets/main_button.dart';
import 'package:it_lectory_copy_2/widgets/nav_text.dart';

import '../widgets/animatedBilder.dart';
import '../widgets/hot_navigation_button.dart';


class OnBoard1 extends StatefulWidget {
  const OnBoard1({super.key});

  @override
  State<OnBoard1> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  bool _isLogin = true;

  @override
  void initState() {
    super.initState();
  }

  //switch state
  void _toggleView() {
    setState(() {
      _isLogin = !_isLogin; // Переключаем состояние
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Padding(padding: EdgeInsets.only(left: 335, top: 35),
              child: HotButtonMenu(),),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              PulsatingCircle(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 50, 
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    DynamicTextByTime(),
                    const SizedBox(height:235,),
                    MainButtonWidget(),
                 SizedBox(height: 15,),
                    NavText(),
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