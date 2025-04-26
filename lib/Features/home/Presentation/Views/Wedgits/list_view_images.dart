import 'package:flutter/material.dart';

class ListViewImages extends StatelessWidget {
  const ListViewImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/Images/81BE7eeKzAL._AC_UY327_FMwebp_QL65_.webp'))),
            ),
          );
        },
      ),
    );
  }
}
