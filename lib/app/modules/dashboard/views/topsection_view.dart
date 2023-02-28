import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TopsectionView extends GetView {
  const TopsectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/200'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Hello, Arga",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Color(0xFF4FB19D),
          iconSize: 30,
        ),
      ],
    );
  }
}
