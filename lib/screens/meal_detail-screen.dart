import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mymealapp/demo_data.dart';

class Mealdetail extends StatelessWidget {
  static const routename = 'meal-detail-screen';

  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context)!.settings.arguments as String;
    final selecteditem = DUMMY_MEALS.firstWhere((meal) => meal.id == mealid);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selecteditem.title,
          style: GoogleFonts.allertaStencil(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              selecteditem.imageUrl,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Ingredients',
                  style: GoogleFonts.allertaStencil(fontSize: 21)),
            ),
            SingleChildScrollView(
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 300,
                  child: ListView.builder(
                    itemCount: selecteditem.ingredients.length,
                    itemBuilder: (context, index) => Container(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.amber.withOpacity(0.7),
                                    Colors.amber
                                  ],
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topRight,
                                ),
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            // color: Colors.blue,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(selecteditem.ingredients[index]),
                            )),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text('Steps',
                    style: GoogleFonts.allertaStencil(
                      fontSize: 23,
                    )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 400,
              child: ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                      leading: CircleAvatar(
                        child: Text(index.toString()),
                      ),
                      title: Text(selecteditem.steps[index])),
                  itemCount: selecteditem.steps.length),
            )
          ],
        ),
      ),
    );
  }
}
