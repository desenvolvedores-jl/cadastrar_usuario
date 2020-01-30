import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemCadastro extends StatelessWidget {
  String title;
  ItemCadastro(this.title);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: title,
            ),
          ),
          SizedBox(height: 8,)
      ],
    );
  }
}