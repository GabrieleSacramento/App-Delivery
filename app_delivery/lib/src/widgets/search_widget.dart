import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
            width: size.width * 0.80,
            height: 62,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(2.0, 1.0),
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: size.width * 0.70,
                    child: Text(
                      'Buscar',
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.search,
                  size: 24,
                  color: Color(0xffE82D44),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/header/filter.png"),
            iconSize: 32,
            padding: const EdgeInsets.only(left: 20),
          ),
        ],
      ),
    );
  }
}
