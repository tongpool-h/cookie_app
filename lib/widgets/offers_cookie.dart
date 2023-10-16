import 'package:cookie_shop/constant/colors.dart';
import 'package:cookie_shop/widgets/arrow.dart';
import 'package:cookie_shop/widgets/premium.dart';
import 'package:flutter/material.dart';

class OffersCookieWidget extends StatelessWidget {
  const OffersCookieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.14,
          decoration: const BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Image.asset('assets/images/1.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Double\nChocolate",
                          style: TextStyle(color: primaryColor, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        PremiumWidget(),
                      ],
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "20 USD",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        Text(
                          "12 USD",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: ArrowWdiget(),
        ),
      ],
    );
  }
}
