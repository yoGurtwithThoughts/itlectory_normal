import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:it_lectory_copy_2/core/database_helper.dart';
import 'package:it_lectory_copy_2/pages/home_page.dart';
import 'package:it_lectory_copy_2/widgets/all_button.dart';
import 'package:it_lectory_copy_2/widgets/style_text.dart';


class LoginWidget extends StatefulWidget {
  LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _recordBook = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<Map<String, dynamic>> _database = [];

  @override
  void initState() {
    super.initState();
    _loadUsers(); // Load users from JSON
  }

  Future<void> _loadUsers() async {
    final String response = await rootBundle.loadString('assets/user_data.json');
    final List<dynamic> data = json.decode(response);
    setState(() {
      _database = List<Map<String, dynamic>>.from(data);
    });
  }

  void _login() {
    final String username = _recordBook.text;
    final user = _database.firstWhere(
          (user) => user['username'] == username,
      orElse: () => {}, // Возвращаем пустую карту, если пользователь не найден
    );

    if (user.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid number record book')),
      );
    }
  }

  void _register() async {
    if (_formKey.currentState?.validate() ?? false) { // Используем безопасную проверку
      String username = _recordBook.text;
      int id = await DatabaseHelper.instance.insertUser(username);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      _recordBook.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 55, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Регистрация', style: TextStylesMain.title),
                  SizedBox(height: 20),
                  Form(
                    key: _formKey,
                    child: SizedBox(
                      height: 50,
                      width: 355,
                      child: TextFormField(
                        controller: _recordBook,
                        style: TextStylesMain.labeltxt,
                        decoration: InputDecoration(
                          labelStyle: TextStylesMain.labeltxt,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 134, 201, 1),
                              width: 2.0,
                            ),
                          ),
                          labelText: '№ зачетки',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 134, 201, 1),
                              width: 2.0,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) { // Проверка на null
                            return 'Please enter your number of record book';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 650),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 154, 222, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 45,
                    width: 256,
                    child: AllButton(
                      onPressed: _register,
                      buttonText: 'Зарегистрироваться',
                    ),
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

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints)
          {
            return Stack();
          }
      ),);
  }
}





