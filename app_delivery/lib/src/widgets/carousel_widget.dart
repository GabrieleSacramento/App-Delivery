import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, right: 20, left: 40, bottom: 20),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    width: 137,
                    height: 186,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 16),
                      child: Column(
                        children: [
                          const Text('Marmitex - frango assado'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Text(
                                  '25 min    |',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16, right: 16),
                                child: Text(
                                  '1,2 km',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 16, right: 16),
                            child: Text(
                              "R\$12,00",
                              style: TextStyle(
                                color: Color(0xffE82D44),
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 50, left: 40, bottom: 120),
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(right: 100),
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.height / 18,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/header/marmita.png"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(150),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, right: 20, left: 20, bottom: 20),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    width: 137,
                    height: 186,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 16),
                      child: Column(
                        children: [
                          const Text('Marmitex - frango assado'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 16),
                                child: Text(
                                  '25 min    |',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16, right: 16),
                                child: Text(
                                  '1,2 km',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 16, right: 16),
                            child: Text(
                              "R\$12,00",
                              style: TextStyle(
                                color: Color(0xffE82D44),
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 50, left: 40, bottom: 120),
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(right: 100),
                        height: MediaQuery.of(context).size.height / 18,
                        width: MediaQuery.of(context).size.height / 18,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/header/marmita.png"),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(150),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
