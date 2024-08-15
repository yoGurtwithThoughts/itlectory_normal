import 'package:flutter/material.dart';
import 'package:it_lectory_3/widgets/style_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListWidget extends StatelessWidget {
  final String namel;
  final String selectitem;
  final List<String> items;
  final Function(String) onItemSelected;

  const ListWidget({
    super.key,
    required this.namel,
    required this.selectitem,
    required this.items,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 335,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/bookclosed.svg',
            ),
            SizedBox(
              width: 5,
            ),
            Text(namel, style: TextStylesMain.alltxt),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 125),
              child: InkWell(
                child: SvgPicture.asset('assets/images/chevrondown.svg'),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: DropdownButton<String>(
                          value: selectitem,
                          onChanged: (String? newValue) {
                            Navigator.of(context).pop();
                            onItemSelected(newValue!);
                          },
                          items: items.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 51, 51, 1),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}