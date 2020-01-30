import 'package:cadastrar_usuario/app/screens/cadastro/cadastro_screen.dart';
import 'package:cadastrar_usuario/app/screens/usuario/components/item_usuario.dart';
import 'package:flutter/material.dart';

class UsuarioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                     color: Colors.deepOrangeAccent),
                  ),
                  Text("Usuarios",
                    style: TextStyle(
                       fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                   IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroScreen()));
                  },
                  icon: Icon(
                    Icons.person_add,
                     color: Colors.deepOrangeAccent),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
            children: <Widget>[
                ItemUsuario(),
            ],
          ),
          )
        ],
      )
    );
  }
}