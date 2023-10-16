import 'package:flutter/material.dart';

import '../constant/colors.dart';

class ArrowWdiget extends StatelessWidget {
  const ArrowWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration:
          const BoxDecoration(color: textblackColor, shape: BoxShape.circle),
      child: const Icon(
        Icons.arrow_forward,
        size: 30,
        color: primaryColor,
      ),
    );
  }
}
