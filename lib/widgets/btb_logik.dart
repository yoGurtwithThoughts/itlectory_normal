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
            text: 'Введение в WPF',
            isBack: false,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 35),
            child: Column(
              children: [
                TitleWidget(title: 'Основы WPF'),
                SizedBox(height: 25),
                ListWidget(
                  namel: 'Введение в WPF',
                  items: StartWPF,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 25),
                TitleWidget(title: 'Язык разметки XAML и контейнеры \nкомпановки', ),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Основы XAML',
                  items: XAMLStart,
                  onItemSelected: (String newValue) {
                    // Handle item selection
                  },
                ),
                SizedBox(height: 25),
                TitleWidget(title: 'Привязка данных и элементы управления'),
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
                TitleWidget(title: 'События и паттерн MVVM'),
                SizedBox(height: 15),
                ListWidget(
                  namel: 'Основы событий и их обработка',
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
                const SizedBox(height: 25,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}