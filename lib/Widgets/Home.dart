import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:dmd/Utils/constants.dart';
import 'package:dmd/Widgets/Cards/FirstCard.dart';
import 'package:dmd/Widgets/NavigationButtons.dart';
import 'package:dmd/Widgets/RightList.dart';
import 'package:dmd/Widgets/StoriesGrid.dart';
import 'package:dmd/Widgets/TopStories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            decoration: BoxDecoration(color: Cst.darkBG),
            child: Column(children: [
              WindowTitleBarBox(
                  child: Row(children: [
                Expanded(child: MoveWindow()),
                WindowButtons()
              ])),
              CustomAppBar(),
              Expanded(
                  child: Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: StoriesGrid()),
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context)
                          .copyWith(scrollbars: false),
                      child: ListView(
                        primary: true,
                        physics: BouncingScrollPhysics(),
                        children: [
                          FirstCard(),
                          RightList(),
                        ],
                      ),
                    ),
                  ),
                ],
              ))
            ])));
  }
}
