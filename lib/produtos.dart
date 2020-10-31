import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iziarketplace/descricao.dart';
import 'package:iziarketplace/Comentarios.dart';
import 'package:iziarketplace/home.dart';

final List<String> imgList = [
  'images/xbox.jpg',
  'images/xbox2.jpg',
  'images/controle.jpg'
];

class Produtos extends StatefulWidget {
  @override
  _ProdutosState createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  int _current = 0;
  bool _favorit = false;

  bool formVisible;
  int _formsIndex;

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            margin: EdgeInsets.only(top: 10),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
      .toList();

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.amber,
          iconSize: 35,
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.amber,
            iconSize: 35,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(_favorit ? Icons.favorite : Icons.favorite_border),
            color: Colors.amber,
            iconSize: 35,
            onPressed: () {
              setState(() {
                _favorit ? _favorit = false : _favorit = true;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Colors.amber
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 20),
            child: Text(
              "Xbox One S 1tb Branco Com 2\ncontroles Sem fio branco Micros",
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "R\$1.112",
                  style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough),
                ),
                Text(
                  "30% OFF",
                  style: GoogleFonts.montserrat(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              "IZC 4",
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              "(R\$ 778.4)",
              style: GoogleFonts.montserrat(
                  color: Colors.amber,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 20, right: 220),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black)]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      _favorit ? Icons.favorite : Icons.favorite_border,
                      color: Colors.grey,
                      size: 20,
                    ),
                    MaterialButton(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          _favorit ? _favorit = false : _favorit = true;
                        });
                      },
                      child: Text(
                        "Adc.favoritos",
                        style: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 20),
            child: RichText(
              text: TextSpan(
                text: "Fornecedor: ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Microsoft',
                    style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                text: "Categoria: ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Consoles',
                    style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: RichText(
              text: TextSpan(
                text: "Endereço: ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Rua das alamedas, número 43 - Aparecida - São Paulo',
                    style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 5),
            child: Text(
              "(100m de voce)",
              style: GoogleFonts.montserrat(
                  color: Colors.amber,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 5),
            child: Text(
              "O que é iZiCoins?",
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
            child: Container(
              padding: const EdgeInsets.only(left: 8, top: 0.5, right: 8),
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  textColor: _formsIndex == 1 ? Colors.white : Colors.black,
                  color: _formsIndex == 1 ? Colors.amber : Colors.white,
                  elevation: 5,
                  child: Text("Descrição"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {
                    setState(() {
                      _formsIndex = 1;
                    });
                  },
                ),
                const SizedBox(width: 10.0),
                RaisedButton(
                  textColor: _formsIndex == 2 ? Colors.white : Colors.black,
                  color: _formsIndex == 2 ? Colors.amber : Colors.white,
                  elevation: 5,
                  child: Text("Comentarios"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {
                    setState(() {
                      _formsIndex = 2;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: _formsIndex == 1 ? Comentarios() : Descricao(),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45, bottom: 50, top: 30),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                    color: Colors.amber,
                  ),
                  height: 45,
                  child: MaterialButton(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    onPressed: () {},
                    child: Text(
                      "Chat",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 50, top: 30),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.amber,
                  ),
                  height: 45,
                  child: MaterialButton(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    onPressed: () {},
                    child: Text(
                      "Ligar",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}