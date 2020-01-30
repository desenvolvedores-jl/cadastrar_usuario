import 'package:cadastrar_usuario/app/screens/cadastro/components/item_cadastro.dart';
import 'package:flutter/material.dart';

class CadastroComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    bool masc = false;
    bool fem = false;
    return Column(
      children: <Widget>[
        SafeArea(
          top: true,
          left: true,
          right: true,
          child: Container(
          
            height: 50,
            child: Row(
              children: <Widget>[ 
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color:Colors.deepOrangeAccent,),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Cadastro",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,  
                        color: Colors.deepOrangeAccent
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
          ),
        ),    
        Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: ListView(
                children: <Widget>[
                  ItemCadastro("Nome",),
                  ItemCadastro("CPF",),
                  ItemCadastro("E-mail",),
                  ItemCadastro("Senha",),
                  ItemCadastro("Confirmar senha",),
                  Text("Sexo:"),
                  Row(
                    children: <Widget>[
                      Container(
                         width: 70,
                         height: 30,
                         alignment: Alignment.center,
                        child: GestureDetector(
                          child: Text("Feminino"),
                          onTap: (){
                            masc = false;
                            fem = true;
                            print ("masculino $masc -- feminino $fem");
                          },
                        ),
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(4.0)),
                         border: Border.all(
                           color: masc == false ?
                            Colors.grey :
                            Colors.deepOrangeAccent),
                        ), 
                      ),
                      SizedBox(
                        width: 8,
                      ),
                       Container(
                         width: 70,
                         height: 30,
                         alignment: Alignment.center,
                        child: GestureDetector(
                          child: Text("Maculino"),
                          onTap: (){
                            masc = true;
                            fem = false;
                            print ("masculino $masc -- feminino $fem");
                          },
                        ),
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(4.0)),
                         border: Border.all(
                           color: fem == false ?
                            Colors.grey :
                            Colors.deepOrangeAccent),
                        ),  
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    child: RaisedButton(
                      onPressed: (){},
                      color: Colors.deepOrangeAccent,
                      child: Text("Cadastrar",
                        style: TextStyle(
                         color: Colors.white, 
                         fontSize: 22,
                        ),),
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