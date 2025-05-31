import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: Icon(Icons.search),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(16)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
