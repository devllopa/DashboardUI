import 'package:dmd/Classes/Right.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RightCard extends StatelessWidget {
  final Right? right;

  const RightCard({this.right});
  @override
  Widget build(BuildContext context) {
    var rightColor = int.parse("0xff" + right!.color!);

    return Container(
      margin: EdgeInsets.only(bottom: 30),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.transparent,
        image: DecorationImage(
            image: NetworkImage(right!.image!), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.05),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 10), // Shadow position
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Material(
          color: Colors.transparent,

          child: InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.only( top: 20, left: 15, right: 15),
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
      ),
    );
  }
}
