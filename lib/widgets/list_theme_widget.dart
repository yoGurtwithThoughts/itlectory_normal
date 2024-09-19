import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_lectory_3/widgets/style_text.dart';

class ListWidget extends StatelessWidget {
  final String namel;
  final List<String> items;
  final Function(String) onItemSelected;

  const ListWidget({
    super.key,
    required this.namel,
    required this.items,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 51, 51, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ExpansionTile(

        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.transparent),
        ),
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/images/bookclosed.svg',
              height: 35,
            ),
            SizedBox(width: 5),
            Expanded(
              child: Text(namel, style: TextStylesMain.alltxt),
            ),
          ],
        ),
        trailing: SvgPicture.asset(
          'assets/images/chevrondown.svg',
          height: 20,
        ),
        children: items.map((item) {
          return GestureDetector(

            onTap: () {
              onItemSelected(item);},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 2.5),
              padding: EdgeInsets.all(10),
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                color: Color.fromRGBO(33, 33, 33, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(item, style: TextStylesMain.alltxt),
            ),
          );
        }).toList(),
      ),
    );
  }
}