import 'package:flutter/material.dart';
import 'package:it_lectory_3/core/model_http.dart';
import 'package:it_lectory_3/widgets/appbar_widget.dart';

class ThemeLection extends StatefulWidget {
  ThemeLection({super.key});

  @override
  State<ThemeLection> createState() => _ThemeLectionState();
}

class _ThemeLectionState extends State<ThemeLection> {
  final ScrollController _scrollController = ScrollController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: _scrollController,
        thumbVisibility: false,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SafeArea(child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 65),
                child: AppBarWidget(text: 'История и развитие WPF', isBack: true),
              ),
              ),
              const SizedBox(height: 15),
              Center(
                child: ModelTheme(
                  themeTxt:
                  '''\tТехнология WPF (Windows Presentation Foundation) является частью экосистемы платформы .NET и представляет собой подсистему для построения графических интерфейсов.
\t\nЕсли при создании традиционных приложений на основе WinForms за отрисовку элементов управления и графики отвечали такие части ОС Windows, как User32 и GDI+, то приложения WPF основаны на DirectX. В этом состоит ключевая особенность рендеринга графики в WPF: используя WPF, значительная часть работы по отрисовке графики, как простейших кнопочек, так и сложных 3D-моделей, ложится на графический процессор на видеокарте, что также позволяет воспользоваться аппаратным ускорением графики.
\t\nОдной из важных особенностей является использование языка декларативной разметки интерфейса XAML, основанного на XML: вы можете создавать насыщенный графический интерфейс, используя или декларативное объявление интерфейса, или код на управляемых языках C#, VB.NET и F#, либо совмещать и то, и другое.
\t\nПервая версия - WPF 3.0 вышла вместе с .NET Framework 3.0 и операционной системой Windows Vista в 2006 году. И с тех пор платформа WPF является частью экосистемы .NET и развивается вместе с фреймворком .NET. Например, на сегодняшний день последней версией фреймворка .NET является .NET 8, и WPF полностью поддерживается этой версией фреймворка.''',
                  imgTheme: AssetImage('assets/imagetheme/logoWPF.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
