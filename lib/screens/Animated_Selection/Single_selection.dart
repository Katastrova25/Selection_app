import 'package:flutter/material.dart';

class singel_Selection extends StatefulWidget {
  singel_Selection({super.key});

  @override
  State<singel_Selection> createState() => _singel_SelectionState();
}

class _singel_SelectionState extends State<singel_Selection> {
  // Corrected: This is now a list of maps
  final List<Map> gift = [
    {
      "name": "lion",
      "image": "assets/animation/lion.png",
    },
    {
      "name": "cow",
      "image": "assets/animation/cow.png",
    },
    {
      "name": "tiger",
      "image": "assets/animation/tiger.png",
    },
    {
      "name": "deer",
      "image": "assets/animation/deer.png",
    },
    {
      "name": "giraffe",
      "image": "assets/animation/giraffe.png",
    },
    {
      "name": "rat",
      "image": "assets/animation/rat.png",
    },
    {
      "name": "white",
      "image": "assets/animation/white-tiger.png",
    },
    {
      "name": "pingeon",
      "image": "assets/animation/pingeon.png",
    }
  ];
  int? _bottomNavIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MulitSelection"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: GridView.builder(
          // Corrected: itemCount is now the length of the list
          itemCount: gift.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _bottomNavIndex = index;
                });
              },
              child: Stack(
                children: [
                  _bottomNavIndex == index
                      ? Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(colors: [
                                  Colors.black12,
                                  Colors.black,
                                  Colors.black26,
                                ])),
                          ),
                        )
                      : const SizedBox.shrink(),
                  Column(
                    children: [
                      Image.asset(
                          height: _bottomNavIndex == index ? 125 : 100,
                          width: 300,
                          fit: BoxFit.cover,
                          gift[index]["image"]!),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        gift[index]["name"]!,
                        style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  _bottomNavIndex == index
                      ? Positioned(
                          bottom: -7,
                          left: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red,
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Center(
                                child: _bottomNavIndex == index
                                    ? const Text(
                                        "Send",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    : const SizedBox.shrink()),
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
