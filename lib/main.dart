import 'package:animation/screens/Animated_Selection/root.dart';
import 'package:flutter/material.dart';


main() {
  runApp(const Animationtask());
}



class Animationtask extends StatelessWidget {
  const Animationtask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primaryColor: Colors.blue,
      ),
      home: Root(),
    );
  }
}
