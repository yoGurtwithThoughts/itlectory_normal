import 'package:flutter/material.dart';
import 'package:it_lectory_copy_2/widgets/authrise_switch_widget.dart';

class NavText extends StatefulWidget {
  const NavText({super.key});

  @override
  State<NavText> createState() => _NavTextState();
}

class _NavTextState extends State<NavText> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpWidget()),
          );
  },
  child: Text('У  МЕНЯ  УЖЕ  ЕСТЬ  АККАУНТ', 
  style: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 12,
    fontWeight:FontWeight.w900,
    color: Color.fromRGBO(255,255,255,1)),),
    );
  }
}