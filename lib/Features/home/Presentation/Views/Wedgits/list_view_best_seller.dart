import 'package:flutter/material.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: index == 4 ? 0 : 12),
                child: Container(
                  height: 130,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/Images/71mdgnpEkSL._AC_UY327_FMwebp_QL65_.webp'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Atomic habits',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      fontFamily: 'PlayfairDisplay',
                    ),
                  ),
                  Text(
                    'James clear',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99💲',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        '⭐ 4.8',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        ' (2390)',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
