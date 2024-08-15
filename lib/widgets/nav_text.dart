import 'package:flutter/material.dart';


class NavText extends StatelessWidget {
  final void Function()? onTap;

  NavText({super.key,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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