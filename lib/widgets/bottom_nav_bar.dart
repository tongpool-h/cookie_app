import 'package:cookie_shop/constant/colors.dart';
import 'package:cookie_shop/widgets/button.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 60,
          decoration: const BoxDecoration(
            color: navBarColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(45),
            ),
          ),
        ),
        Positioned.fill(
          top: -25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  index = 0;
                }),
                child: BottomWidget(
                  icon: "assets/images/home.png",
                  text: "Home",
                  isSelected: index == 0,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () => setState(() {
                  index = 1;
                }),
                child: BottomWidget(
                  icon: "assets/images/search.png",
                  text: "Search",
                  isSelected: index == 1,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () => setState(() {
                  index = 2;
                }),
                child: BottomWidget(
                  icon: "assets/images/premium.png",
                  text: "Premium",
                  isSelected: index == 2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
