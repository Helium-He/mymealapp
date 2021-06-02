import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mymealapp/model/meal.dart';
import 'package:mymealapp/screens/meal_detail-screen.dart';

class MealItem extends StatelessWidget {
  final String url;
  final String id;
  final int duration;
  final Complexity complexity;
  final String title;

  MealItem(
      {required this.url,
      required this.id,
      required this.duration,
      required this.complexity,
      required this.title});

  String getComplexityText(Complexity c) {
    switch (c) {
      case Complexity.Challenging:
        return 'Challenging';

      case Complexity.Hard:
        return 'Hard';
      // break
      case Complexity.Simple:
        return 'Simple';
      default:
        return 'Unknown';
    }
  }

  void movetonextpage(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(Mealdetail.routename, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => movetonextpage(context),
      child: Padding(
        padding: EdgeInsets.all(10),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 4,
          child: Column(
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 12,
                  right: 12,
                  child: Container(
                    // fit: BoxFit.scaleDown,
                    color: Colors.black45,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    // width: 3,
                    child: Text(
                      '$title',
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.acme(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.schedule),
                        Text(' $duration min'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.fastfood),
                        Text(getComplexityText(complexity)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
