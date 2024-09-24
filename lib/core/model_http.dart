import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';

Future<List<dynamic>> fetchData() async {
  final response = await http.get(Uri.parse('https://metanit.com/sharp/wpf/1.php'));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Не удалось загрузить данные');
  }
}

class ModelHttp {
  final String themeTxt;
  final String imgTheme;

  ModelHttp({
    required this.themeTxt,
    required this.imgTheme,
  });

  factory ModelHttp.fromJson(Map<String, dynamic> json) {
    return ModelHttp(
      themeTxt: json['themeTxt'],
      imgTheme: json['imgTheme'],
    );
  }

  Future<List<ModelHttp>> loadJsonData() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final List<dynamic> data = json.decode(response);

    return data.map((item) => ModelHttp.fromJson(item)).toList();
  }
}
