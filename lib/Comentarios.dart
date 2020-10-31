import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Descricao extends StatefulWidget {
  @override
  _DescricaoState createState() => _DescricaoState();

  const Descricao({
    Key key,
  }) : super(key: key);
}

class _DescricaoState extends State<Descricao> {
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
                "Leia as avaliações",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 15),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 60, top: 20, bottom: 8),
                      child: Text(
                        "Antonio Macedo",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60, bottom: 20),
                      child: Text(
                        "12 de julho de 2020",
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Excelente Video game",
                      style: GoogleFonts.montserrat(
                          color: Colors.black, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 1),
              color: Colors.grey,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 2, top: 20, bottom: 8),
                      child: Text(
                        "Maria Antonia",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 20),
                      child: Text(
                        "07 de junho de 2020",
                        style: GoogleFonts.montserrat(
                            color: Colors.black, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Muito bom. Atendeu as expectativas.",
                      style: GoogleFonts.montserrat(
                          color: Colors.black, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 1),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
