import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Map> search = [];
  List<Map> products = [
    {
      "name": "Laptop Dall",
      "price": "100",
      "image": "assets/laptop/labtop1.png",
    },
    {
      "name": "Laptop Apple",
      "price": "200",
      "image": "assets/laptop/labtop2.png",
    },
    {
      "name": "Laptop Lenovo",
      "price": "250",
      "image": "assets/laptop/labtop3.png",
    },
    {
      "name": "Laptop Acer",
      "price": "120",
      "image": "assets/laptop/pexels-tuurt-812264.jpg",
    },
    {
      "name": "Laptop Asus",
      "price": "300",
      "image": "assets/laptop/pexels-veeterzy-303383.jpg",
    },
    {
      "name": "Laptop Apple",
      "price": "200",
      "image": "assets/laptop/labtop1.png",
    },
  ];

  @override
  void initState() {
    super.initState();
    search = products;
  }

  void searchProduct(String keyword) {
    setState(() {
      search = products
          .where((element) => element["name"].toLowerCase().contains(keyword))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 2,
        surfaceTintColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: Colors.blue,
              onChanged: (value) {
                searchProduct(value);
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.blue),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                suffixIcon: Icon(
                  Icons.close,
                  color: Colors.blue,
                ),
                prefixIconColor: Colors.blue,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: List.generate(search.length, (index) {
                final product = products[index];
                return ListTile(
                  title: Text(
                    product["name"]!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                          child: Image.asset(
                        product["image"]!,
                        fit: BoxFit.contain,
                      )),
                    ),
                  ),
                  trailing: Text(
                    product["price"]!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
