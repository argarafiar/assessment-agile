import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BottomnavView extends GetView {
  BottomnavView({
    required this.idx,
  });

  late int idx;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: idx,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: Color(0xFF4FB19D),
      onTap: (index) {
        if (index == 0) {
          Get.toNamed("/dashboard");
        } else if (index == 1) {
          Get.toNamed("/search");
        } else if (index == 2) {
          Get.toNamed("/bookmark");
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Favorite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border),
          label: "Profile",
        ),
      ],
    );
  }
}
