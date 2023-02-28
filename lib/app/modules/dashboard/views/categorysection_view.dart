import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CategorysectionView extends GetView {
  CategorysectionView({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  late IconData icon;
  late String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFF4FB19D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: CategoryWidget(icon: this.icon, text: this.text),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  late IconData icon;
  late String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          color: Colors.white,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
