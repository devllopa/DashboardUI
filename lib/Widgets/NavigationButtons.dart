import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:dmd/Utils/constants.dart';
import 'package:flutter/material.dart';

final buttonColors = WindowButtonColors(
  iconNormal: Cst.borderColor.withOpacity(0.7),
  mouseOver: Cst.primaryColor,
  mouseDown: Cst.borderColor.withOpacity(0.7),
  iconMouseOver: Cst.borderColor.withOpacity(0.7),
  iconMouseDown: Cst.primaryColor,
);

final closeButtonColors = WindowButtonColors(
  mouseOver: Color(0xFFD32F2F),
  mouseDown: Color(0xFFB71C1C),
  iconNormal: Cst.borderColor.withOpacity(0.7),
  iconMouseOver: Cst.borderColor.withOpacity(0.7),
);

class WindowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
