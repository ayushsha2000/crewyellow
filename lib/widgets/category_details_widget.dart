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
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
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
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Padding(
              padding: const EdgeInsets.only(top: 8, left: 12.0, right: 8.0),
              child: headingtext('Achievements')),
          SizedBox(
            height: 8.0,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                achievementsCard('Current League', currentLeague),
                achievementsCard('League Ranking', leagueRanking),
                achievementsCard('Experience', experience),
                achievementsCard('Number of Wins', wins.toString()),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headingtext('Past featured performances'),
                SizedBox(
                  height: 8.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                        Container(
                          height: 120,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    pastPerformances[index]['image'].toString(),
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            pastPerformances[index]['Name'].toString(),
                            softWrap: true,
                            // overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.pink,
                                fontWeight: FontWeight.w500),
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
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headingtext('Clan discussions'),
                SizedBox(
                  height: 8.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          discussion[index]['heading'].toString(),
                          style: TextStyle(fontSize: 20, color: Colors.pink),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Text(
                            discussion[index]['title'].toString(),
                            softWrap: true,
                            // overflow: TextOverflow.fade,
                            style: TextStyle(fontSize: 12, color: Colors.white),
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
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headingtext('Clan members'),
                SizedBox(
                  height: 8.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              NetworkImage(members[index]['image'].toString()),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: Text(
                            members[index]['Name'].toString(),
                            softWrap: true,
                            // overflow: TextOverflow.fade,
                            style: TextStyle(fontSize: 18, color: Colors.pink),
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
          SizedBox(
            height: 6.0,
          )
        ],
      ),
    );
  }

  Text headingtext(String heading) {
    return Text(heading, style: TextStyle(fontSize: 24, color: Colors.amber));
  }

  Row achievementsCard(String name, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(fontSize: 20, color: Colors.pink),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 30, color: Colors.amber),
        ),
      ],
    );
  }
}
