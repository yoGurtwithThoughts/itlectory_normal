import 'package:flutter/material.dart';
import 'package:it_lectory_3/widgets/style_text.dart';


class ModelTheme extends StatelessWidget {
  final String themeTxt;
  final AssetImage imgTheme;

  ModelTheme({
    required this.themeTxt,
    required this.imgTheme,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.left,
              maxLines: null,
              softWrap: true,
              themeTxt,
                style: TextStylesMain.alltxt,
            ),
            SizedBox(height: 25),
            Center(child: Image(image: imgTheme)),

          ],
        ),
      ),
    );
  }
}

