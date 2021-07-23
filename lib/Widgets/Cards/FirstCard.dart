import 'package:dmd/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 200,
      margin: EdgeInsets.only(left: 10, right: 40, top: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
            image: NetworkImage("https://i.imgur.com/57dJA26.png"),
            fit: BoxFit.cover),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding:
                  EdgeInsets.only(bottom: 20, top: 30, left: 15, right: 15),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Text(
                          "We are making the world green again, one tree at a time.",
                          style: GoogleFonts.lexendDeca(
                              color: Color(0xffFD6D6D),
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffFD6D6D)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Plant a Tree",
                              style: GoogleFonts.lexendDeca(
                                  color: Cst.lightColor,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal)),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
