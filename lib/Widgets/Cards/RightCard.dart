import 'package:dmd/Classes/Right.dart';
import 'package:dmd/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RightCard extends StatelessWidget {
  final Right? right;

  const RightCard({this.right});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0,
            color: Cst.colorTxt.withOpacity(0.15),
            child: Container(
              padding:
              EdgeInsets.only(bottom: 30, top: 30, left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Cst.lightBG.withOpacity(0.02),
                      blurRadius: 10,
                      spreadRadius: 5),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "We are making the world green again, one tree at a time",
                      style: GoogleFonts.lexendDeca(
                          color: Cst.borderColor,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
