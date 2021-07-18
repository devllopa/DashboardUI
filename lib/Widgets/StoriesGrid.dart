import 'dart:convert';

import 'package:dmd/Classes/Stories.dart';
import 'package:dmd/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class StoriesGrid extends StatefulWidget {
  @override
  _StoriesGridState createState() => _StoriesGridState();
}

class _StoriesGridState extends State<StoriesGrid> {
  List<Stories> stories = [];

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: GridView.builder(
        itemCount: stories.length,
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 220),
        padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
        itemBuilder: (BuildContext context, int index) {
          Stories St = new Stories(
            image: stories[index].image,
            title: stories[index].title,
          );
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Cst.lightBG.withOpacity(0.02),
                    blurRadius: 10,
                    spreadRadius: 5),
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 0,
              color: Cst.colorTxt.withOpacity(0.15),
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    SelectableText(St.title!,
                        style: GoogleFonts.lexendDeca(
                            color: Cst.borderColor,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

// Fetch content from the Standard json file
  Future<void> readJsonStories() async {
    final String response =
        await rootBundle.loadString('assets/data/Stories.json');
    final data = await json.decode(response);
    setState(() {
      final List<dynamic> _items = data["stories"];
      stories = _items.map((item) => Stories.fromMap(item)).toList();
    });
  }

  @override
  void initState() {
    readJsonStories();
    print(stories.length);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
