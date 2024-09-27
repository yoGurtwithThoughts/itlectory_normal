import 'package:flutter/material.dart';
import 'package:it_lectory_3/widgets/style_text.dart';

class ModelTheme extends StatefulWidget {
  final String themeTxt;
  final String imgPath;

  ModelTheme({
    required this.themeTxt,
    required this.imgPath,
    super.key,
  });

  @override
  _ModelThemeState createState() => _ModelThemeState();
}

class _ModelThemeState extends State<ModelTheme> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isVisible = true;
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
            Center(
              child: ModelTheme(themeTxt: ''' WPF разбивается на два уровня: managed API и unmanaged API (уровень интеграции с DirectX). Managed API (управляемый API-интерфейс) содержит код, исполняемый под управлением общеязыковой среды выполнения .NET - Common Language Runtime. Этот API описывает основной функционал платформы WPF и состоит из следующих компонентов:

                  PresentationFramework.dll: содержит все основные реализации компонентов и элементов управления, которые можно использовать при построении графического интерфейса

                  PresentationCore.dll: содержит все базовые типы для большинства классов из PresentationFramework.dll

                  WindowsBase.dll: содержит ряд вспомогательных классов, которые применяются в WPF, но могут также использоваться и вне данной платформы

                  Unmanaged API используется для интеграции вышележащего уровня с DirectX:

                  milcore.dll: собственно обеспечивает интеграцию компонентов WPF с DirectX. Данный компонент написан на неуправляемом коде (С/С++) для взаимодействия с DirectX.

            WindowsCodecs.dll: библиотека, которая предоставляет низкоуровневую поддержку для изображений в WPF''',
              imgPath: '',),
            ),
          ],
        ),
      ),
    );
  }
}

