import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Comentarios extends StatefulWidget {
  @override
  _ComentariosState createState() => _ComentariosState();

  const Comentarios({
    Key key,
  }) : super(key: key);
}

class _ComentariosState extends State<Comentarios> {
  TextEditingController foneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Descrição",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
            ),
            Text(
                "No Xbox One S, você pode se divertir com a maior linha de jogos, incluindo jogos clássicos do Xbox 360,em um console 40% menor. Armazene mais jogos do que nunca com um enorme disco rígido de 1TB. Stream de vídeo 4K no Netflix e Amazon Video, e assista a filmes Blu-ray UHD na impressionante fidelidade visual. Jogue todos os exclusivos em um console com seu visual repaginado e muito menor.\nEm seguida, experimente o maior conforto e sensação do novo controle sem fio do Xbox, com analógico texturizado e tecnologia Bluetooth. Com todos os maiores sucessos lançados, tudo o que você ama sobre Xbox 360 ainda melhor no Xbox One. Nesta versão o console acompanha eFootball PES 2020, 1 mês grátis de Xbox Live Gold e Xbox Game Pass.",
                style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 15
                ),)
          ],
        ),
      ),
    );
  }
}
