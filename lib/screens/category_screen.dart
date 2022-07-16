// ignore_for_file: prefer_const_constructors

import 'package:camp/dummy_data.dart';
import 'package:camp/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: ListView(
      children: DUMMY_DATA
          .map(
            (e) => CategoryItem(
                id: e.id,
                clanName: e.clanName,
                logo: e.logo,
                description: e.description),
          )
          .toList(),
    ));
  }
}
