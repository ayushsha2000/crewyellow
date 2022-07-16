// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, file_names, prefer_final_fields

import 'package:camp/screens/category_details_screen.dart';
import 'package:camp/screens/category_screen.dart';
import 'package:camp/screens/performance.dart';
import 'package:camp/screens/winner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        activeColor: Colors.amber,
        inactiveColor: Colors.grey,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            label: 'Winner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart),
            label: 'Performance',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              routes: {
                CategoryScreenDetail.routeName: (context) =>
                    CategoryScreenDetail(),
              },
              builder: (context) {
                return CupertinoPageScaffold(child: CategoryScreen());
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: WinnerScreen());
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: PerformanceScreen());
              },
            );
          default:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: CategoryScreen());
              },
            );
        }
      },
    );
  }
}
