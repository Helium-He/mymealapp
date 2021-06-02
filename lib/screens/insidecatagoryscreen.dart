import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymealapp/demo_data.dart';
import 'package:mymealapp/widgets/meal_item.dart';

class Insidecatagoryscreen extends StatelessWidget {
  static const String routeName = 'inside_catagory_screen';

  @override
  Widget build(BuildContext context) {
    final routeargs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    String id = routeargs['id'] as String;
    String title = routeargs['name'] as String;
    final mealstodisplay = DUMMY_MEALS.where((element) {
      return element.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Container(
        child: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return MealItem(
                id: DUMMY_MEALS[index].id,
                url: DUMMY_MEALS[index].imageUrl,
                duration: DUMMY_MEALS[index].duration,
                complexity: DUMMY_MEALS[index].complexity,
                title: DUMMY_MEALS[index].title,
              );
            },
            itemCount: mealstodisplay.length,
          ),
        ),
      ),
    );
  }
}
