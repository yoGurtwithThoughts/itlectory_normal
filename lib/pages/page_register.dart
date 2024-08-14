import 'package:flutter/material.dart';
import 'package:it_lectory_3/core/data_user_teacher.dart';
import 'package:it_lectory_3/core/databbase_helper.dart';
import 'package:it_lectory_3/pages/home_teachers.dart';
import 'package:it_lectory_3/widgets/all_button.dart';
import 'package:it_lectory_3/widgets/nav_text.dart';
import 'package:it_lectory_3/widgets/style_text.dart';

import 'home_page.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _password = TextEditingController();
  final _login = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  var isObsText = true;
  List<Map<String, dynamic>> database = [];

  @override
  void initState() {
    super.initState();

    _register();
  }



//register nev users
  void _register() async {
    if (_formKey.currentState?.validate() ?? false) {
      String names = _login.text;
      String pass= _password.text;
      int id = await DatabaseHelper.instance.insertUser1(names, pass);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => THome()),
      );
      _login.clear();
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
                    key: _formKey1,
                    child: SizedBox(
                      height: 50,
                      width: 355,
                      child: TextFormField(
                        controller: _login,
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
                          labelText: 'Логин',
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
                            return 'Please enter your login';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                   SizedBox( height: 50,),
                  Form(
                    key: _formKey,
                    child: SizedBox(
                      height: 50,
                      width: 355,
                      child: TextFormField(
                        obscureText: isObsText,
                        controller: _password,
                        style: TextStylesMain.labeltxt,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          suffixIcon: InkWell(
                            onTap: () {
                              isObsText = !isObsText;
                              setState(() {});
                            },
                            child: Icon(
                              isObsText ? Icons.visibility_off : Icons.visibility,
                            ),
                          ),
                          labelStyle: TextStylesMain.labeltxt,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 134, 201, 1),
                              width: 2.0,
                            ),
                          ),
                          labelText: 'Пароль',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 134, 201, 1),
                              width: 2.0,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
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
                  SizedBox(height: 420),
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
                  SizedBox(height: 15),
                  NavText(),
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
  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final _recordBook1 = TextEditingController();


  void _login() {
    final String inputV = _recordBook1.text;

    if (inputV == login) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid input value')),
      );
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
                  Text('Авторизация', style: TextStylesMain.title),
                  SizedBox(height: 20),
                  Form(

                    child: SizedBox(
                      height: 50,
                      width: 355,
                      child: TextFormField(
                        controller: _recordBook1,
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
                          labelText: 'Пароль',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 134, 201, 1),
                              width: 2.0,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty) { // Проверка на null
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
                      onPressed: _login,
                      buttonText: 'Войти',
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

