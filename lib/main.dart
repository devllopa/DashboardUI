import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:dmd/Utils/constants.dart';
import 'package:dmd/Widgets/Home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'Widgets/NavigationBar.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    final initialSize = Size(1250, 650);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Dashboard UI - Dark Mode";
    win.show();
  });
}

const borderColor = Color(0xFF805306);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          splashColor: Cst.primaryColor.withOpacity(0.5)
        ),
        home: Scaffold(
            body: WindowBorder(
                color: Colors.transparent,
                width: 0,
                child: Row(children: [NavigationBar(), HomePage()]))));
  }
}
