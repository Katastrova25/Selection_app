import 'package:flutter/material.dart';

class MulitImages extends StatefulWidget {
  MulitImages({super.key});

  @override
  State<MulitImages> createState() => _MulitImagesState();
}

class _MulitImagesState extends State<MulitImages> {
  List<String> images = [
    "assets/laptop/labtop1.png",
    "assets/laptop/labtop2.png",
    "assets/laptop/labtop3.png",
    "assets/laptop/pexels-tuurt-812264.jpg",
    "assets/laptop/pexels-veeterzy-303383.jpg",
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5483e0),
      body: Column(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[_currentIndex]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(images.length, (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color:
                          _currentIndex == index ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
