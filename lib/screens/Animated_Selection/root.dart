import 'package:animation/screens/Animated_Selection/Multi_selection.dart';
import 'package:animation/screens/Animated_Selection/Single_selection.dart';
import 'package:animation/screens/Animated_Selection/mulit_images.dart';
import 'package:animation/screens/Animated_Selection/widget/animated_bottom.dart';
import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  Root({super.key});

  final List<Widget> _pages = [
    MulitImages(),
    singel_Selection(),
    mulit_Selection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: PageView(
        children: _pages,
      ),
      bottomNavigationBar: const AnimatedBottom(),
    );
  }
}
