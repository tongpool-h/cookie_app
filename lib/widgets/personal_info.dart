import 'package:flutter/material.dart';

import '../constant/colors.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tongpool",
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Text(
          "Heeptaisong",
          style: TextStyle(
            color: primaryColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
