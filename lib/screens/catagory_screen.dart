import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymealapp/widgets/catagory_item.dart';
import 'package:mymealapp/demo_data.dart';

class CatagoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      children: DUMMY_CATEGORIES
          .map((item) => CatagortItem(item.id, item.title, item.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20),
    );
  }
}
