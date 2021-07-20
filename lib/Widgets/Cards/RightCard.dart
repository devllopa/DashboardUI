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
    var rightColor = int.parse("0xff" + right!.color!);

    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(bottom: 30, top: 30, left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Cst.lightBG.withOpacity(0.02),
              image: DecorationImage(
                  image: NetworkImage(right!.image!), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 15,
                  offset: Offset(0, 16), // Shadow position
                ),
              ],

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  child: Text(right!.title!,
                      style: GoogleFonts.lexendDeca(
                          color: Color(rightColor),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontStyle: FontStyle.normal)),
                ),
                SizedBox(height: 10),
                Text(right!.city!,
                    style: GoogleFonts.lexendDeca(
                        color: Color(rightColor),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
