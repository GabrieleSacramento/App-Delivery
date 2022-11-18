import 'package:flutter/material.dart';

class CarouselListWidget extends StatefulWidget {
  final List<Game> games;

  const CarouselListWidget({Key? key, required this.games}) : super(key: key);

  @override
  State<CarouselListWidget> createState() => _CarouselListWidgetState();
}

class _CarouselListWidgetState extends State<CarouselListWidget> {
  late PageController _pageController;

  ValueNotifier<double> scrollOffSet = ValueNotifier(1);

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, viewportFraction: .62);
    _pageController.addListener(() {
      scrollOffSet.value = _pageController.page!;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemCount: widget.games.length,
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        itemBuilder: (context, index) {
          return ValueListenableBuilder(
              valueListenable: scrollOffSet,
              builder: (context, value, child) {
                final game = widget.games[index];
                return Align(
                  child: Container(
                    height: 250,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image.asset(
                              game.assetImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            game.name,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                game.time,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                game.separation,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                game.distance,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Center(
                            child: Text(
                              game.value,
                              style: const TextStyle(
                                color: Color(0xffE82D44),
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}

class Game {
  final String name;
  final String assetImage;
  final String time;
  final String distance;
  final String separation;
  final String value;

  Game({
    required this.name,
    required this.assetImage,
    required this.time,
    required this.distance,
    required this.separation,
    required this.value,
  });
}
