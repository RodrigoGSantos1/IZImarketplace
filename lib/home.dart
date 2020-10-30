import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/BG_Localização_Pesquisa.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [                      
                        IconButton(
                          padding: EdgeInsets.only(left:10),
                          icon: Icon(
                            Icons.menu,
                            size: 45,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          padding: EdgeInsets.only(right:20),
                          icon: Icon(                          
                            Icons.favorite_border,
                            size: 45,
                            color: Colors.white,
                            ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Text("João, Seja bem-vindo ao",style: TextStyle(color: Colors.white, fontSize: 20),),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Image.asset("images/izilogo.png"),
                  ),
                  Text("Nós vamos te ajudar a encontrar\n tudo o que precisa em iZiCoin", style: TextStyle(
                    color: Colors.white, fontSize: 23
                  ),),

                  TextField(

                  ),
                  TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'E-mail ou CPF/CNPJ',
                      labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
                ),
                ],
              )),
        ),
      ),
    );
  }
}