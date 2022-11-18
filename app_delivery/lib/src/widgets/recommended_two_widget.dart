import 'package:flutter/material.dart';

class RecommendedTwoWidget extends StatelessWidget {
  const RecommendedTwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 44, left: 16, top: 20),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            height: 100,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(2.0),
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/header/carne.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 7),
                  ),
                  const Text('Marmitex - carne guizada'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          '15 min   |  ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, right: 16),
                        child: Text(
                          '0,8 km',
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
                    padding: EdgeInsets.only(top: 5, right: 16),
                    child: Text(
                      "R\$14,00",
                      style: TextStyle(
                        color: Color(0xffE82D44),
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
