import 'dart:convert';
import 'package:dmd/Classes/Stories.dart';
import 'package:dmd/Widgets/Cards/StoryCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            mainAxisExtent: 200),
        padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
        itemBuilder: (BuildContext context, int index) {
          Stories st = new Stories(
            image: stories[index].image,
            title: stories[index].title,
          );
          return StoryCard(story: st);
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
