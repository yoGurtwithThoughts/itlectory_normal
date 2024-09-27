import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_lectory_3/core/model_http.dart';
import 'package:it_lectory_3/widgets/appbar_widget.dart';
import 'package:it_lectory_3/widgets/next_lection_button.dart';

class ThemeLection extends StatefulWidget {
  ThemeLection({super.key});

  @override
  State<ThemeLection> createState() => _ThemeLectionState();
}

class _ThemeLectionState extends State<ThemeLection> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >= 55 && !_isVisible) {
        setState(() {
          _isVisible = true;
        });
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        controller: _scrollController,
        thumbVisibility: false,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 65),
                  child: AppBarWidget(
                      text: 'История и развитие WPF', isBack: true),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: ModelTheme(
                  themeTxt:
                      '''\tТехнология WPF (Windows Presentation Foundation) является частью экосистемы платформы .NET и представляет собой подсистему для построения графических интерфейсов.
\t\n\tЕсли при создании традиционных приложений на основе WinForms за отрисовку элементов управления и графики отвечали такие части ОС Windows, как User32 и GDI+, то приложения WPF основаны на DirectX. В этом состоит ключевая особенность рендеринга графики в WPF: используя WPF, значительная часть работы по отрисовке графики, как простейших кнопочек, так и сложных 3D-моделей, ложится на графический процессор на видеокарте, что также позволяет воспользоваться аппаратным ускорением графики.
\t\n\tОдной из важных особенностей является использование языка декларативной разметки интерфейса XAML, основанного на XML: вы можете создавать насыщенный графический интерфейс, используя или декларативное объявление интерфейса, или код на управляемых языках C#, VB.NET и F#, либо совмещать и то, и другое.
\t\n\tПервая версия - WPF 3.0 вышла вместе с .NET Framework 3.0 и операционной системой Windows Vista в 2006 году. И с тех пор платформа WPF является частью экосистемы .NET и развивается вместе с фреймворком .NET. Например, на сегодняшний день последней версией фреймворка .NET является .NET 8, и WPF полностью поддерживается этой версией фреймворка.''',
                  imgPath: 'assets/imagetheme/lg.png',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: ModelTheme(
                  themeTxt: '''Что вам, как разработчику, предлагает WPF?
                
1. Использование традиционных языков .NET-платформы - C#, F# и VB.NET для создания логики приложения

2. Возможность декларативного определения графического интерфейса с помощью специального языка разметки XAML, основанном на xml и представляющем альтернативу программному созданию графики и элементов управления, а также возможность комбинировать XAML и C#/VB.NET

3. Независимость от разрешения экрана: поскольку в WPF все элементы измеряются в независимых от устройства единицах, приложения на WPF легко масштабируются под разные экраны с разным разрешением.

4. Новые возможности, которых сложно было достичь в WinForms, например, создание трехмерных моделей, привязка данных, использование таких элементов, как стили, шаблоны, темы и др.

5. Хорошее взаимодействие с WinForms, благодаря чему, например, в приложениях WPF можно использовать традиционные элементы управления из WinForms.

6. Богатые возможности по созданию различных приложений: это и мультимедиа, и двухмерная и трехмерная графика, и богатый набор встроенных элементов управления, а также возможность самим создавать новые элементы, создание анимаций, привязка данных, стили, шаблоны, темы и многое другое

7. Аппаратное ускорение графики - вне зависимости от того, работаете ли вы с 2D или 3D, графикой или текстом, все компоненты приложения транслируются в объекты, понятные Direct3D, и затем визуализируются с помощью процессора на видеокарте, что повышает производительность, делает графику более плавной.

8. Создание приложений под множество ОС семейства Windows.
                ''',
                  imgPath:'assets/imagetheme/devwpf.png',
                ),
              ),
              SizedBox(height: 25),
              Center(child: NextLecButton(
                onTapp: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThemeLection()),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
