import 'package:dmd/Classes/Stories.dart';
import 'package:dmd/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryCard extends StatelessWidget {
  final Stories? story;

  const StoryCard({this.story});
  @override
  Widget build(BuildContext context) {
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
              color: Cst.colorTxt.withOpacity(0.10),
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
                SvgPicture.asset(
                  story!.image!,
                  width: 55,
                  color: Cst.lightBG,
                ),
                Spacer(),
                Text(story!.title!,
                    style: GoogleFonts.lexendDeca(
                        color: Cst.borderColor,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
