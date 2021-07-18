import 'package:dmd/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hovering/hovering.dart';

class CustomButton extends StatelessWidget {
  final String? icon;
  final Function? onClick;
  final double? size;
  final bool? isActive;
  const CustomButton(
      {required this.icon, required this.onClick, required this.size,required this.isActive});
  @override
  Widget build(BuildContext context) {
    return isActive! ? IconButton(
      onPressed: () {
        onClick!();
      },
      icon: SvgPicture.asset(
        icon!,
        color: Cst.primaryColor,
        width: size,
      ),
    ):
    HoverWidget(
      onHover: (event) {},
      hoverChild: IconButton(
        onPressed: () {
          onClick!();
        },
        icon: SvgPicture.asset(
          icon!,
          color: Cst.primaryColor.withOpacity(0.5),
          width: size,
        ),
      ),
      child: IconButton(
        onPressed: () {
          onClick!();
        },
        icon: SvgPicture.asset(
          icon!,
          color: Cst.borderColor.withOpacity(0.7),
          width: size,
        ),
      ),
    )  ;
  }
}
