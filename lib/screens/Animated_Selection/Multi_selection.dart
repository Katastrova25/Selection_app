import 'package:flutter/material.dart';

class mulit_Selection extends StatefulWidget {
   mulit_Selection({super.key});

  @override
  State<mulit_Selection> createState() => _mulit_SelectionState();
}

class _mulit_SelectionState extends State<mulit_Selection> {
  List<String> news = [
    "Search ",
    "Sports",
    "Flutter",
    "Entertainment",
    "World",
    "Politics",
    "Weather",
    "Health",
    "Business",
    "Kings",
    "America",
    "Europe",
    "Asia",
    "Afric",
    "Egypt",
    "London",
    "Paris",
    "Tokyo",
    "Cairo",
    "Doha",
  ];
  Set <String> types = {};




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToggleSelection"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Text("Choose Whatever You Like",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              children: List.generate(news.length, (index){
                final type = news[index];
                final isSelected = types.contains(type);

                return GestureDetector(
                  onTap: (){
                    setState(() {
                      if(!isSelected){
                        types.add(type);
                      }else{
                        types.remove(type);
                        ;
                      }
                    });
                  },

                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: Chip(

                      backgroundColor: isSelected ? Colors.blue : Colors.white,
                      label: Text(type),
                    ),
                  ),
                );

              })


            ),
            const SizedBox(height: 20,),
            Column(
              children: [
                Text("Selected Types: ${types.join(", ")}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),

          ],
        ),
      )
    );
  }
}