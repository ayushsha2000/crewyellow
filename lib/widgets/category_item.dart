// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'dart:ui';

import 'package:camp/screens/category_details_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String clanName;
  final String logo;
  final String description;
  CategoryItem(
      {required this.clanName,
      required this.id,
      required this.logo,
      required this.description});
  void selectCategory(BuildContext ctx) {
    Navigator.pushNamed(ctx, CategoryScreenDetail.routeName, arguments: 
      id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
      child: InkWell(
        onTap: () {
          selectCategory(context);
        },
        child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(logo),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      color: Colors.black.withOpacity(0.7),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            clanName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
