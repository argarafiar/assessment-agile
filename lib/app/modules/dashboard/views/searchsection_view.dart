import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SearchsectionView extends GetView {
  const SearchsectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText: "Cari resep",
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.menu_open,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
