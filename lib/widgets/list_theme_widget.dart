import 'package:flutter/material.dart';
import 'package:it_lectory_3/widgets/style_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            return Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(26, 26, 26, 1),
                borderRadius: BorderRadius.circular(2.5),
                border: Border(
                  top: BorderSide(color: Colors.transparent),
                  bottom: BorderSide(color: Colors.transparent),
                ),
              ),
              child: ListTile(
                title: Text(item, style: TextStylesMain.alltxt),
                dense: true,
                onTap: () {
                  onItemSelected(item); // Вызов функции при выборе элемента
                },
                visualDensity: VisualDensity.compact,
              ),
            );
          }).toList()),
    );
  }
}