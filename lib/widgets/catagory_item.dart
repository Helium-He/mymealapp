import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mymealapp/screens/insidecatagoryscreen.dart';
// import './insidecatagoryscreen.dart';

class CatagortItem extends StatelessWidget {
  final String id;
  final String name;
  final Color color;
  CatagortItem(this.id, this.name, this.color);

  void clickedonitem(ctx) {
    Navigator.of(ctx).pushNamed(Insidecatagoryscreen.routeName,
        arguments: {'id': id, 'name': name});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => clickedonitem(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Icon(
              Icons.food_bank,
              color: Colors.white,
              size: 45,
            ),
            Text(name,
                style: GoogleFonts.allertaStencil(
                    color: Colors.white, fontSize: 21)),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
