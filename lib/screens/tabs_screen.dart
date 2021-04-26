import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/favorites_screen.dart';

import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1, // default is 0
      child: Scaffold(
        appBar: AppBar(
          // title: Text('Meals'),
          //   titleSpacing: 0,

          // title na bottom hobe
          title: TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Theme.of(context).accentColor,
            // indicatorColor: Colors.yellow,  // not understood
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                ),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavoritesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
