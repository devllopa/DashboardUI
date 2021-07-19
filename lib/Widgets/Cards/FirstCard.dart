import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 40, top: 20),
      width: MediaQuery.of(context).size.width * 0.5,
      height: 200,
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding:
                  EdgeInsets.only(bottom: 30, top: 30, left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage("https://i.imgur.com/57dJA26.png"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Text(
                          "We are making the world green again, one tree at a time",
                          style: GoogleFonts.lexendDeca(
                              color: Color(0xffFD6D6D),
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
