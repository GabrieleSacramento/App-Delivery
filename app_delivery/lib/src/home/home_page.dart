import 'package:app_delivery/src/widgets/bottom_bar_widget.dart';
import 'package:app_delivery/src/widgets/carousel_widget.dart';
import 'package:app_delivery/src/widgets/header_widget.dart';
import 'package:app_delivery/src/widgets/recommended_widget.dart';
import 'package:app_delivery/src/widgets/search_widget.dart';
import 'package:app_delivery/src/widgets/status_bar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Column(children: <Widget>[
          Expanded(
            child: ListView(
              children: const [
                HeaderWidget(),
                SearchWidget(),
                StatusBarWidget(),
                CarouselWidget(),
                RecommendedWidget(),
                RecommendedWidget(),
              ],
            ),
          ),
          const SizedBox(height: 120, child: BottomBarWidget())
        ]));
  }
}
