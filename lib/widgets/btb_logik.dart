import 'package:flutter/material.dart';
import 'package:it_lectory_3/core/lection_theme_data.dart';
import 'package:it_lectory_3/widgets/appbar_widget.dart';
import 'package:it_lectory_3/widgets/list_theme_widget.dart';

import 'title_widget.dart';

class THomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 35),
          AppBarWidget(
            text: 'WPF',
            isBack: false,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 35),
            child: Column(
              children: [
                TitleWidget(title: 'Введение в WPF'),
                SizedBox(height: 25),
                ListWidget(
                  namel: 'Введение в WPF',
                  items: StartWPF,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 25),
                TitleWidget(title: 'Введение в WPF'),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Основы XAML',
                  items: XAMLStart,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 25),
                TitleWidget(title: 'Введение в WPF'),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Элементы управления (Controls)',
                  items: ControlsElement,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 15),
                TitleWidget(title: ' Графика и визуализация'),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Рисование и 2D графика',
                  items: Draving,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Анимация',
                  items: Dravingg,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Стили и шаблоны',
                  items: Dravinggg,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 15),
                TitleWidget(title: 'Привязка данных и MVVM'),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Основы привязки данных',
                  items: RMVVM,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Паттерн MVVM',
                  items: RMVVMM,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Команды и взаимодействие с пользователем',
                  items: RMVVMMM,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 15),
                TitleWidget(title: 'Расширенные возможности WPF'),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Работа с мультимедиа',
                  items: WPFV,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Документы и печать',
                  items: WPFVc,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Оптимизация и производительность',
                  items: WPFVcc,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}