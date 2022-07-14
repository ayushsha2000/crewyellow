import 'package:flutter/material.dart';

class CrewData {
  final String id;
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
  final Color colors;

  const CrewData(
      {required this.id,
      required this.clanName,
      required this.colors,
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
}
