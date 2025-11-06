import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("MulitSelection"),
      centerTitle: true,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      elevation: 2,
      surfaceTintColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }
}
