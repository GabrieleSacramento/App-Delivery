import 'package:app_delivery/src/widgets/recommended_two_widget.dart';
import 'package:app_delivery/src/widgets/recommended_widget.dart';
import 'package:app_delivery/src/widgets/search_widget.dart';
import 'package:app_delivery/src/widgets/status_bar_widget.dart';
import 'package:flutter/material.dart';
import 'carousel_widget.dart';
import 'header_widget.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
          const SizedBox(height: 12),
          const RecommendedWidget(),
          const RecommendedTwoWidget(),
          const SizedBox(height: 30),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(0xff, 232, 45, 68),
        child: const ImageIcon(
          AssetImage('assets/bottom/shopping.png'),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(0xff, 232, 45, 68),
        child: IconTheme(
          data: const IconThemeData(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  tooltip: 'Home',
                  icon: const ImageIcon(
                    AssetImage('assets/bottom/home.png'),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Items',
                  icon: const ImageIcon(
                    AssetImage('assets/bottom/like.png'),
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 24),
                IconButton(
                  tooltip: 'Perfil',
                  icon: const ImageIcon(
                    AssetImage('assets/bottom/ticket.png'),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'Configurações',
                  icon: const ImageIcon(
                    AssetImage('assets/bottom/user.png'),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
