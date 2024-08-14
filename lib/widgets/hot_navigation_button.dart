import 'package:flutter/material.dart';
import 'package:it_lectory_3/widgets/authrise_switch_widget.dart';


class HotButtonMenu extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginWidget()),
        );
  },
    child:const Text('Пропустить' ,
      style: TextStyle( 
      color: Colors.white,
      fontSize: 12,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white,
      fontFamily: 'Monsterrat'),
      ),
    );
  }
}