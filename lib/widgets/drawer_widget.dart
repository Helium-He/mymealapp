import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mymealapp/main.dart';
import 'package:mymealapp/screens/catagory_screen.dart';
import 'package:mymealapp/screens/filterscreen.dart';
import 'package:mymealapp/screens/home_screen.dart';

class MymainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.2,
          // width: 21,
          color: Theme.of(context).primaryColor,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'My Meal APP',
                    // style: ,
                    style: GoogleFonts.anaheim(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider(
          thickness: 3,
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.category_sharp),
            title: Text(
              'Category',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        InkWell(
          child: ListTile(
            leading: Icon(Icons.filter),
            title: Text(
              'Filter',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, Myfilter.Routename);
          },
        )
      ],
    );
  }
}
