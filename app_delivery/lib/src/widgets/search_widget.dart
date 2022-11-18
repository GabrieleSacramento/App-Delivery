import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      const Padding(
        padding: EdgeInsets.all(8),
      ),
      Flexible(
        child: TextFormField(
          textAlign: TextAlign.start,
          decoration: const InputDecoration(
            enabledBorder: InputBorder.none,
            hintText: 'Buscar',
            suffixIcon: Image(
              image: AssetImage('assets/header/Search.png'),
            ),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset('assets/header/filter.png'),
        iconSize: 32,
      ),
    ]);
  }
}
