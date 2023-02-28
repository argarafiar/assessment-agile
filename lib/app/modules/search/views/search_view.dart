import 'package:example_ui/app/modules/dashboard/views/bottomnav_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQuery.padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            Text(
              "Cari Masakan",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4FB19D),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
              height: 20,
            ),
            Text(
              "Filter dari",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kategori",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                  ),
                ),
                Icon(Icons.keyboard_arrow_up),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              children: [
                Container(
                  width: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF4FB19D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cookie,
                        size: 50,
                      ),
                      Text("Kue"),
                    ],
                  ),
                ),
                Container(
                  width: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF4FB19D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.set_meal_rounded,
                        size: 50,
                      ),
                      Text("Seafood"),
                    ],
                  ),
                ),
                Container(
                  width: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF4FB19D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.terrain_rounded,
                        size: 50,
                      ),
                      Text("Vegan"),
                    ],
                  ),
                ),
                Container(
                  width: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF4FB19D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.fastfood,
                        size: 50,
                      ),
                      Text("fastfood"),
                    ],
                  ),
                ),
                Container(
                  width: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF4FB19D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cookie,
                        size: 50,
                      ),
                      Text("Kue"),
                    ],
                  ),
                ),
                Container(
                  width: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFF4FB19D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.set_meal_rounded,
                        size: 50,
                      ),
                      Text("Seafood"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Diet",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kesulitan",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Waktu",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomnavView(idx: 1),
    );
  }
}
