// ignore_for_file: use_key_in_widget_constructors

import 'package:camp/dummy_data.dart';
import 'package:camp/widgets/category_details_widget.dart';
import 'package:flutter/material.dart';

class CategoryScreenDetail extends StatelessWidget {
  static const routeName = '/category-details';

  @override
  Widget build(BuildContext context) {
    final categoryId = ModalRoute.of(context)!.settings.arguments as String;

    final selectedCategory =
        DUMMY_DATA.firstWhere((category) => category.id == categoryId);
    return Scaffold(
      appBar: AppBar(title: Text(selectedCategory.clanName), backgroundColor: selectedCategory.colors,),
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
    );
  }
}
