import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:animation/screens/Animated_Selection/Multi_selection.dart';
import 'package:animation/screens/Animated_Selection/Single_selection.dart';
import 'package:animation/screens/Animated_Selection/mulit_images.dart';
import 'package:animation/screens/Search/Search.dart';
import 'package:flutter/material.dart';

class AnimatedBottom extends StatefulWidget {
  const AnimatedBottom({super.key});

  @override
  State<AnimatedBottom> createState() => _AnimatedBottomState();
}

class _AnimatedBottomState extends State<AnimatedBottom> {
  int _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.image,
    Icons.select_all_outlined,
    Icons.toggle_off_outlined,
  ];

  final _pages = <Widget>[
    MulitImages(),
    singel_Selection(),
    mulit_Selection(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_bottomNavIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        onPressed: () {
          setState(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Search()));
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.blue,
        activeColor: Colors.white,
        splashSpeedInMilliseconds: 100,
        scaleFactor: 2,
        hideAnimationCurve: Curves.easeInOut,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 0,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
