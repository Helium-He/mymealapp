import 'package:flutter/material.dart';
import 'package:mymealapp/screens/catagory_screen.dart';
import 'package:mymealapp/screens/fav.dart';
import 'package:mymealapp/widgets/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [CatagoryScreen(), Favourite()];
  int selectedpageindex = 0;
  void _selectedpage(index) {
    setState(() {
      selectedpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // titleTextStyle:
        title: Text(
          'My Meal App',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      drawer: Drawer(
        child: MymainDrawer(),
      ),
      body: pages[selectedpageindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: selectedpageindex,
        onTap: _selectedpage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites')
        ],
      ),
    );
  }
}
//
