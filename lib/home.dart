import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iziarketplace/produtos.dart';

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
                          padding: EdgeInsets.only(left: 10),
                          icon: Icon(
                            Icons.menu,
                            size: 45,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          padding: EdgeInsets.only(right: 20),
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
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "João, Seja bem-vindo ao",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 30, right: 30),
                          child: Image.asset("images/izilogo.png"),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 40, left: 5, right: 5),
                          child: Text(
                            "Nós vamos te ajudar a encontrar\n tudo o que precisa em iZiCoin",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 30, right: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Material(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                                elevation: 5,
                                child: ListTile(
                                  trailing: GestureDetector(
                                    child: Icon(
                                      Icons.search,
                                      size: 30,
                                    ),
                                  ),
                                  title: TextField(
                                    cursorColor: Colors.amber,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        border: InputBorder.none,
                                        focusColor: Colors.transparent,
                                        filled: false,
                                        hintText: "O que você procura?",
                                        hintStyle: GoogleFonts.montserrat(
                                            color: Colors.black, fontSize: 19)),
                                    autofocus: false,
                                  ),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.amber),
                            child: MaterialButton(
                              padding: EdgeInsets.only(
                                left: 30,
                                right: 30,
                              ),
                              onPressed: () {
                                 Navigator.push(
          context, MaterialPageRoute(builder: (context) => Produtos() ));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  "Escolha uma Categoria",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.power_settings_new,
                            size: 40,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: Image.asset(
                                "images/face.png",
                                scale: 2.3,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Image.asset(
                                "images/insta.png",
                                scale: 2.3,
                              ),
                            ),
                            Image.asset(
                              "images/twitter.png",
                              scale: 2.3,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 8),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/balão_Contato.png",
                                scale: 2.3,
                              ),
                              Text(
                                "Contato",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

// TextField(
//                         cursorColor: Colors.amber,
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.black),
//                             ),
//                             hintText: "O que você procura?" ,
//                             labelStyle:
//                                 TextStyle(color: Colors.grey, fontSize: 20)),

//                       ),
