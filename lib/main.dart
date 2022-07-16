import 'package:camp/screens/tabScreen.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Crew Yellow',
      debugShowCheckedModeBanner: false,
      home: TabsScreen(),
    );
  }
}
