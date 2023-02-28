import 'package:example_ui/app/modules/dashboard/views/bottomnav_view.dart';
import 'package:example_ui/app/modules/dashboard/views/categorysection_view.dart';
import 'package:example_ui/app/modules/dashboard/views/listfoodsection_view.dart';
import 'package:example_ui/app/modules/dashboard/views/searchsection_view.dart';
import 'package:example_ui/app/modules/dashboard/views/todaysection_view.dart';
import 'package:example_ui/app/modules/dashboard/views/topsection_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQuery.padding.top;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 37, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopsectionView(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Apa yang ingin kamu masak hari ini?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4FB19D),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SearchsectionView(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Resep hari ini",
                style: TextStyle(fontSize: 23),
              ),
              TodaysectionView(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "category",
                    style: TextStyle(
                      color: Color(0xFF4FB19D),
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Lihat semua",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategorysectionView(
                      icon: Icons.terrain_rounded, text: "Vegan"),
                  CategorysectionView(
                      icon: Icons.set_meal_rounded, text: "Seafood"),
                  CategorysectionView(icon: Icons.cookie, text: "Snack"),
                  CategorysectionView(icon: Icons.fastfood, text: "fastfood"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                children: [
                  ListfoodsectionView(text: "Nasi Goreng"),
                  ListfoodsectionView(text: "Gado - gado"),
                  ListfoodsectionView(text: "Rujak Cingur"),
                  ListfoodsectionView(text: "Nasi padang"),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomnavView(idx: 0),
    );
  }
}
