import 'package:flutter/material.dart';
import 'package:it_lectory_3/pages/home_teachers.dart';
import 'package:it_lectory_3/widgets/authrise_switch_widget.dart';


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
        final currentRoute = ModalRoute.of(context)?.settings.name;
        if (currentRoute == '/pagt') {
          Navigator.pushNamed(context, '/th');
        } else if (currentRoute == '/onb1') {
          Navigator.pushNamed(context, '/sg');
        }
      },
      child: Text(
        'У  МЕНЯ  УЖЕ  ЕСТЬ  АККАУНТ',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
          fontWeight: FontWeight.w900,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
}