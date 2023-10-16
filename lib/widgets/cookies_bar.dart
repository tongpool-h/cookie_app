import 'package:cookie_shop/constant/colors.dart';
import 'package:flutter/material.dart';

class CookiesBarWidget extends StatelessWidget {
  const CookiesBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Text("Cookies", style: TextStyle(color: primaryColor, fontSize: 42),),
            Text("Premium", style: TextStyle(color: secondaryColor, fontSize: 30),),
          ],
        ),
        Text("See more", style: TextStyle(color: secondaryColor, fontSize: 16),),
      ],
    );
  }
}
