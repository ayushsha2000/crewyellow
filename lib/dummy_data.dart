// ignore_for_file: constant_identifier_names

import 'package:camp/model/crew_data.dart';
import 'package:flutter/material.dart';

const DUMMY_DATA = [
  CrewData(
    id: 'c1',
    colors: Colors.amber,
    clanName: 'Chennai Super Kings',
    logo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfKD6IdaRr4UYDN7pRzZLLoarNBLFiSIHhAg&usqp=CAU',
    member: 11,
    description: 'Chennai Super Kings (CSK) are a franchise cricket team based in Chennai, Tamil Nadu, India. They play in the Indian Premier League (IPL).',
    activityStatus: 5,
    currentLeague: 'IPL',
    discussion: [ 
      { 
        'heading' : 'General Thread', 
        'title' : '15 Unread Messages' 
      }, 
      { 
        'heading' : 'Anyone Trading League', 
        'title' : '10 Unread Messages' 
      }, 
      { 
        'heading' : 'General Thread', 
        'title' : '2 Unread Messages' 
      }, 
      { 
        'heading' : 'Qualifier', 
        'title' : '15 Unread Messages' 
      }
    ],
    experience: '2000 xp',
    leagueRanking: '11th',
    liveclan: [ 
      'Live Trading ChampionShip', 
      'Treasure hunt'
    ],
    members: [ 
      { 
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg81DH4QHMraOPyh5pCpSS9l2a7MRs-yi4Fg&usqp=CAU', 
        'Name': 'Dhoni'
      }, 
      { 
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr6O89kJLAKdkxK4VS_YBtpqI5WknjB7-UZw&usqp=CAU', 
        'Name': 'Raydu'
      }
    ],
    wins: 6,
    pastPerformances: [ 
      { 
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg81DH4QHMraOPyh5pCpSS9l2a7MRs-yi4Fg&usqp=CAU', 
        'Name': 'Dhoni in Indian Premier League'
      }, 
      { 
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr6O89kJLAKdkxK4VS_YBtpqI5WknjB7-UZw&usqp=CAU', 
        'Name': 'Raydu in American Premier League'
      }
    ],
  ), 
  CrewData(
    id: 'c2',
    clanName: 'Royal Challengers Bangalore',
    colors: Colors.red,
    member: 15,
    logo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2MgjK3eMeCOZYzeTOeSH_bkWtB4UzQ-zZBQ&usqp=CAU',
    activityStatus: 8,
    description: 'Royal Challengers Bangalore (often abbreviated as RCB) are a franchise cricket team based in Bangalore, Karnataka, that plays in the Indian Premier League (IPL).',
    currentLeague: 'IPL',
    discussion: [ 
      { 
        'heading' : 'Anyone Trading League', 
        'title' : '15 Unread Messages' 
      }, 
      { 
        'heading' : 'General Thread', 
        'title' : '10 Unread Messages' 
      }, 
      { 
        'heading' : 'General Thread', 
        'title' : '2 Unread Messages' 
      }, 
      { 
        'heading' : 'Qualifier', 
        'title' : '15 Unread Messages' 
      }
    ],
    experience: '1000 xp',
    leagueRanking: '1st',
    liveclan: [ 
      'Live Trading ChampionShip', 
      'Treasure hunt'
    ],
    members: [ 
      { 
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT97YbPAMAMQVeOO4CeMiKy-diGnWEHQtUMgA&usqp=CAU', 
        'Name': 'Virat'
      }, 
      { 
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkDtJmJUuDGaIC3waJ1g1v6cyflezhYRDfsg&usqp=CAU', 
        'Name': 'Maxwell'
      }
    ],
    wins: 10,
    pastPerformances: [ 
      { 
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT97YbPAMAMQVeOO4CeMiKy-diGnWEHQtUMgA&usqp=CAU', 
        'Name': 'Virat in Indian Premier League'
      }, 
      { 
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkDtJmJUuDGaIC3waJ1g1v6cyflezhYRDfsg&usqp=CAU', 
        'Name': 'Maxwell in International Premier League'
      }
      
    ],
  ),
];
