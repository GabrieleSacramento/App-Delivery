import 'package:flutter/material.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/recommended_two_widget.dart';
import '../widgets/recommended_widget.dart';
import '../widgets/search_widget.dart';
import '../widgets/status_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 60),
                children: <Widget>[
                  const HeaderWidget(),
                  const SearchWidget(),
                  const StatusBarWidget(),
                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 16),
                    child: Text(
                      'Comida popular',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  CarouselListWidget(
                    games: [
                      Game(
                        name: 'Marmitex - frango assado',
                        assetImage: 'assets/header/frango.png',
                        time: '30 min',
                        distance: '1,5km',
                        separation: '|',
                        value: 'R\$15,00',
                      ),
                      Game(
                        name: 'Marmitex - carne guizada',
                        assetImage: 'assets/header/carne.png',
                        time: '15 min',
                        distance: '0,8km',
                        separation: '|',
                        value: 'R\$14,00',
                      ),
                      Game(
                        name: 'Mamitex - filé com fritas',
                        assetImage: 'assets/header/fritas.png',
                        time: '25 min',
                        distance: '1,2km',
                        separation: '|',
                        value: 'R\$12,00',
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 16),
                    child: Text(
                      'Recomendados',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const RecommendedWidget(),
                  const RecommendedTwoWidget(),
                ],
              ),
              const BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
