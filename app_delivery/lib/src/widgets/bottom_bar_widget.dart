import 'dart:ui';

import 'package:app_delivery/src/widgets/helpers/bottom_bar_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 120,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: BottomBarClipper(),
                child: ClipRect(
                  child: Container(
                    height: 73,
                    color: const Color(0xffE82D44),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/bottom/home.png"),
                          iconSize: 24,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/bottom/like.png"),
                          iconSize: 24,
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/bottom/ticket.png"),
                          iconSize: 24,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/bottom/user.png"),
                          iconSize: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              height: 94,
              width: 94,
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: const Color(0xffE82D44)),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/bottom/shopping.png"),
                    iconSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
