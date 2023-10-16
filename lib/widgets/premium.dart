import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant/colors.dart';

class PremiumWidget extends StatelessWidget {
  const PremiumWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.crown,
          color: secondaryColor,
          size: 16,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "Premium",
          style: TextStyle(
            color: secondaryColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
