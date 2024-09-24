import 'package:flutter/material.dart';
import 'package:it_lectory_3/core/model_http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:html/parser.dart' as html;
import 'package:webview_flutter/webview_flutter.dart';

class ThemeLection extends StatefulWidget {
   ThemeLection({super.key});

  @override
  State<ThemeLection> createState() => _ThemeLectionState();
}

Future<List<ModelHttp>> fetchData() async {
  final response = await http.get(Uri.parse('https://metanit.com/sharp/wpf/'));

  if (response.statusCode == 200) {
    var document = html.parse(response.body);
    var elements = document.querySelectorAll('Введение в WPF');
    List<dynamic> body = json.decode(response.body);
    return body.map((dynamic item) => ModelHttp.fromJson(item)).toList();
  } else {
    throw Exception('Не удалось загрузить данные');
  }
}

class _ThemeLectionState extends State<ThemeLection> {
  late final WebViewController controller;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder<List<ModelHttp>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Ошибка: ${snapshot.error}'));
          } else {
            final items = snapshot.data!;
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index].themeTxt),
                  leading: Image.network(items[index].imgTheme),
                );
              },
            );
          }
        },
      ),
    );
  }
}
