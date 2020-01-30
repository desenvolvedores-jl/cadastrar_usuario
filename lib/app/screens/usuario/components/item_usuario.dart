import 'package:flutter/material.dart';

class ItemUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 4),
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.00, 3.00),
            color:Color(0xff000000).withOpacity(0.16),
            blurRadius: 6,
          )
        ], borderRadius: BorderRadius.circular(8.00), 
      ),
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 75,
                width: 75,
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.papodesalao.com.br/wp-content/uploads/2019/02/194132-seu-cabelo-cacheado-nunca-mais-sera-o-me-article_media_item-1.jpg",),
                ),
              ),
              SizedBox(height: 14),
              Text("Cachinhos",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 17,
          ),
          Container(
            width: 1,
            color: Colors.grey[200],
          ),
          SizedBox(
            width: 17,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("E-mail:", style: TextStyle(
                fontSize: 12,
               ),
              ), 
              Text("lucas@lucas.com", style: TextStyle(
                fontSize: 16,
                ),
              ),
              SizedBox(height: 5,),
               Text("CPF:", style: TextStyle(
                fontSize: 12,
               ),
              ), 
              Text("123.456.789-01", style: TextStyle(
                fontSize: 16,
                ),
              ),  
              SizedBox(height: 5,),
               Text("Sexo:", style: TextStyle(
                fontSize: 12,
               ),
              ), 
              Text("Masculino", style: TextStyle(
                fontSize: 16,
                ),
              ), 
            ],
          )
        ],
      ), 
    );
  }
}