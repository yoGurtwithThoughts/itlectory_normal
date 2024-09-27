import 'package:flutter/material.dart';
import 'package:it_lectory_3/widgets/style_text.dart';

class ModelTheme extends StatefulWidget {
  final String themeTxt;
  final String imgPath; // Изменяем тип на String для пути к изображению

  ModelTheme({
    required this.themeTxt,
    required this.imgPath,
    super.key,
  });

  @override
  _ModelThemeState createState() => _ModelThemeState();
}

class _ModelThemeState extends State<ModelTheme> {
  bool _isVisible = false; // Переменная для управления видимостью

  @override
  void initState() {
    super.initState();
    // Запускаем анимацию через 1 секунду после инициализации
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isVisible = true; // Устанавливаем видимость в true
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.themeTxt,
              textAlign: TextAlign.left,
              maxLines: null,
              softWrap: true,
              style: TextStylesMain.alltxt,
            ),
            SizedBox(height: 25),
            Center(
              child: AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: Duration(seconds: 5),
                child: Image.asset(widget.imgPath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

