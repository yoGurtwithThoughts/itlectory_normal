import 'package:flutter/material.dart';
import 'package:it_lectory_3/widgets/style_text.dart';
class NextLecButton extends StatefulWidget {
  final VoidCallback onTapp;
  const NextLecButton({super.key,
  required this.onTapp});

  @override
  State<NextLecButton> createState() => _NextLecButtonState();
}

class _NextLecButtonState extends State<NextLecButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 335,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color.fromRGBO(0, 154, 222, 1),
          )
        ),
        child: Center(child: Text('Следующая лекция', style: TextStylesMain.buttontxt,)),
      ),
    onTap: () {
    widget.onTapp();
    },
    );
  }
}
