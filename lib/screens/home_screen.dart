import 'package:cookie_shop/constant/colors.dart';
import 'package:cookie_shop/widgets/avatar.dart';
import 'package:cookie_shop/widgets/personal_info.dart';
import 'package:flutter/material.dart';

import '../models/cookie.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/cart.dart';
import '../widgets/cookie_card.dart';
import '../widgets/cookies_bar.dart';
import '../widgets/offers_bar.dart';
import '../widgets/offers_cookie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvatarWidget(),
                  SizedBox(
                    width: 16,
                  ),
                  PersonalInfoWidget(),
                  Spacer(),
                  CartWidget(),
                ],
              ),
              const CookiesBarWidget(),
              SizedBox(
                height: size.height * 0.13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: cookies
                    .map(
                      (e) => CookieCardWidget(cookie: e),
                    )
                    .toList(),
              ),
              // CookieCardWidget(cookie: cookies[0]),
              const SizedBox(
                height: 10,
              ),
              const OffersBarWidget(),
              const SizedBox(
                height: 10,
              ),
              const OffersCookieWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
