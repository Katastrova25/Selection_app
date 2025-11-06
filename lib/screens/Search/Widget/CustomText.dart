import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
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
    );
  }
}
