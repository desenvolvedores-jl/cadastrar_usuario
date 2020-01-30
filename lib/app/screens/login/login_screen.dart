import 'package:cadastrar_usuario/app/screens/cadastro/cadastro_screen.dart';
import 'package:cadastrar_usuario/app/screens/usuario/usuario_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SafeArea(
          left: true,
          right: true,
          top: true,
          child: Container(
            height: 50,
            child: Center(
              child: Text("Login", style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent),)
              ), 
            ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 17),
            child: ListView(
                children: <Widget>[
                  Icon(Icons.airline_seat_recline_extra,
                    color: Colors.deepOrangeAccent,
                    size: 130,
                  ),
                  SizedBox(height: 10,),
                   TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "E-mail",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Senha",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: RaisedButton(
                      child: Text("Entrar", 
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white),
                      ),
                      color: Colors.deepOrangeAccent,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UsuarioScreen()));
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      child: Text("Criar uma conta"),
                      onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroScreen()));
                      },
                    ),
                  ),
                ],
            ),
          ),
        ),
      ],
    );
  }
}