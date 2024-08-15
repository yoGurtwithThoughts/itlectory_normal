import 'package:flutter/material.dart';
import 'package:it_lectory_3/core/lection_theme_data.dart';
import 'package:it_lectory_3/widgets/list_theme_widget.dart';
import 'package:it_lectory_3/core/lection_theme_data.dart';

class THome extends StatefulWidget {
  const THome({super.key});

  @override
  State<THome> createState() => _THomeState();
}

class _THomeState extends State<THome> {
  String _selectedItem = StartWPF[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 35),
              child: Column(
                children: [
                  ListWidget(
                    namel: 'Введение в WPF',
                    selectitem: _selectedItem,
                    items: StartWPF ,
                    onItemSelected: (String newValue) { // Исправлено на String
                      setState(() {
                        _selectedItem = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
