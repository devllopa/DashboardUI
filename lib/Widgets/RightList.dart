import 'dart:convert';

import 'package:dmd/Classes/Right.dart';
import 'package:dmd/Widgets/Cards/RightCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class RightList extends StatefulWidget {
  @override
  _RightListState createState() => _RightListState();
}

class _RightListState extends State<RightList> {
  List<Right> rights = [];

  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: GridView.builder(
        itemCount: rights.length,
        physics: BouncingScrollPhysics(),
        primary: false,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            mainAxisExtent: 250),
        padding: EdgeInsets.only(left: 10, right: 40, top: 20),
        itemBuilder: (BuildContext context, int index) {
          Right right = new Right(
            image: rights[index].image,
            title: rights[index].title,
            city: rights[index].city,
            color: rights[index].color,
          );
          return RightCard(right: right);
        },
      ),
    );
  }

  // Fetch content from the Rights json file
  Future<void> readJsonRights() async {
    final String response =
        await rootBundle.loadString('assets/data/Rights.json');
    final data = await json.decode(response);
    setState(() {
      final List<dynamic> _items = data["rights"];
      rights = _items.map((item) => Right.fromMap(item)).toList();
    });
  }

  @override
  void initState() {
    readJsonRights();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
