import 'package:cadastrar_usuario/app/screens/login/login_screen.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent
      ),
      home:Scaffold(
        body:  LoginScreen(),
      )     
    );
  }
}