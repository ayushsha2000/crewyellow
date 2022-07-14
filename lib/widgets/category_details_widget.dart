// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryScreenWidget extends StatelessWidget {
  final String clanName;
  final int member;
  final String description;
  final int activityStatus;
  final String currentLeague;
  final String leagueRanking;
  final String experience;
  final int wins;
  final String logo;
  final List<Map<String, String>> pastPerformances;
  final List<String> liveclan;
  final List<Map<String, String>> discussion;
  final List<Map<String, String>> members;

  CategoryScreenWidget(
      {required this.clanName,
      required this.member,
      required this.description,
      required this.logo,
      required this.activityStatus,
      required this.currentLeague,
      required this.discussion,
      required this.experience,
      required this.leagueRanking,
      required this.liveclan,
      required this.members,
      required this.wins,
      required this.pastPerformances});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
            height: 250,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
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
                            'Clan name: $clanName',
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
                          Row(
                            children: [
                              Text(
                                '$member members,',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                '$activityStatus online',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 8,
            child: Container(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Achievements',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  achievementsCard('Current League', currentLeague),
                  achievementsCard('League Ranking', leagueRanking),
                  achievementsCard('Experience', experience),
                  achievementsCard('Number of Wins', wins.toString()),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.0,),
          Card(
            elevation: 8,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Past featured performances',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                pastPerformances[index]['image'].toString()),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Text(
                              pastPerformances[index]['Name'].toString(),
                              softWrap: true,
                              // overflow: TextOverflow.fade,
                              style: TextStyle(fontSize: 18,),
                            ),
                          )
                        ],
                      ),
                    ),
                    itemCount: pastPerformances.length,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 6.0,),
          Card(
            elevation: 8,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Clan discussions',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Row(
                        children: [
                          Text(discussion[index]['heading'].toString(),style: TextStyle(fontSize: 20,),),
                          SizedBox(width: 8.0,),
                          Expanded(
                            child: Text(
                              discussion[index]['title'].toString(),
                              softWrap: true,
                              // overflow: TextOverflow.fade,
                              style: TextStyle(fontSize: 12,),
                            ),
                          )
                        ],
                      ),
                    ),
                    itemCount: pastPerformances.length,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 6.0,), 
          Card(
            elevation: 8,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Clan members',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                members[index]['image'].toString()),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Text(
                              members[index]['Name'].toString(),
                              softWrap: true,
                              // overflow: TextOverflow.fade,
                              style: TextStyle(fontSize: 18,),
                            ),
                          )
                        ],
                      ),
                    ),
                    itemCount: pastPerformances.length,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 6.0,)
        ],
      ),
    );
  }

  Row achievementsCard(String name, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
