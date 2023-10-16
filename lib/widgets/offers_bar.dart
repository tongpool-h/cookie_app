import 'package:flutter/material.dart';
import '../constant/colors.dart';

class OffersBarWidget extends StatelessWidget {
  const OffersBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Offres",
          style: TextStyle(color: primaryColor, fontSize: 42),
        ),
        Text(
          "See more",
          style: TextStyle(color: secondaryColor, fontSize: 16),
        ),
      ],
    );
  }
}