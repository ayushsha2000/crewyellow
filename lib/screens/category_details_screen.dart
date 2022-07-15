// ignore_for_file: use_key_in_widget_constructors

import 'package:camp/dummy_data.dart';
import 'package:camp/widgets/category_details_widget.dart';
import 'package:flutter/material.dart';

class CategoryScreenDetail extends StatefulWidget {
  static const routeName = '/category-details';

  @override
  State<CategoryScreenDetail> createState() => _CategoryScreenDetailState();
}

class _CategoryScreenDetailState extends State<CategoryScreenDetail> {
  @override
  Widget build(BuildContext context) {
    final categoryId = ModalRoute.of(context)!.settings.arguments as String;
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    final selectedCategory =
        DUMMY_DATA.firstWhere((category) => category.id == categoryId);
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(title: Text(selectedCategory.clanName), backgroundColor: selectedCategory.colors,),
      body: CategoryScreenWidget(
        clanName: selectedCategory.clanName,
        member: selectedCategory.member,
        description: selectedCategory.description,
        logo: selectedCategory.logo,
        activityStatus: selectedCategory.activityStatus,
        currentLeague: selectedCategory.currentLeague,
        discussion: selectedCategory.discussion,
        experience: selectedCategory.experience,
        leagueRanking: selectedCategory.leagueRanking,
        liveclan: selectedCategory.liveclan,
        members: selectedCategory.members,
        wins: selectedCategory.wins,
        pastPerformances: selectedCategory.pastPerformances,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
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
    );
  }
}
