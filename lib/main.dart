import 'package:camp/screens/category_details_screen.dart';
import 'package:camp/screens/category_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crew Yellow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.amber,
    
      ),
      home: const CategoryScreen(),
      routes: { 
        CategoryScreenDetail.routeName: (context)=> CategoryScreenDetail(),
      },
    );
  }
}
