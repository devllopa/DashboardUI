import 'package:dmd/Utils/constants.dart';
import 'package:dmd/Widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText("Top Stories",
              style: GoogleFonts.lexendDeca(
                  color: Cst.borderColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal)),
          Spacer(),
          CustomButton(
            icon: 'assets/icons/Bell.svg',
            onClick: () {},
            size: 22,
            isActive: false,
          ),
          SizedBox(width: 15),
          CustomButton(
            icon: 'assets/icons/User.svg',
            onClick: () {},
            size: 22,
            isActive: false,
          ),
          SizedBox(width: 15),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage:
                      NetworkImage("https://i.imgur.com/nx8fyuo.jpg"),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
