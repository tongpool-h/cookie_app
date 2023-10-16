import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant/colors.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key, required this.icon, required this.text, required this.isSelected});

  final String icon;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(10),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: cardColor),
          child: Image.asset(
            icon,
            color: primaryColor,
          ),
        ),
        const SizedBox(height: 4,),
        Text(
          text,
          style: TextStyle(color: isSelected ? secondaryColor : Colors.grey),
        ),
      ],
    );
  }
}
