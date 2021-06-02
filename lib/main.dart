import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mymealapp/screens/catagory_screen.dart';
import 'package:mymealapp/screens/filterscreen.dart';
import 'package:mymealapp/screens/home_screen.dart';
import 'package:mymealapp/screens/insidecatagoryscreen.dart';
import 'package:mymealapp/screens/meal_detail-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMeal',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle:
              GoogleFonts.allertaStencil(color: Colors.white, fontSize: 23),
        ),
        primarySwatch: Colors.cyan,
        accentColor: Colors.lightBlueAccent,
        canvasColor: Colors.grey[50],
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1:
                  GoogleFonts.allertaStencil(color: Colors.white, fontSize: 23),
            ),
      ),
      // home: HomeScreen(),
      // initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        Insidecatagoryscreen.routeName: (context) => Insidecatagoryscreen(),
        Mealdetail.routename: (context) => Mealdetail(),
        Myfilter.Routename: (context) => Myfilter()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // titleTextStyle:
      //     title: Text(
      //   'My Meal App',
      //   style: Theme.of(context).textTheme.bodyText1,
      // )),
      body: SafeArea(
        child: CatagoryScreen(),
      ),
    );
  }
}
