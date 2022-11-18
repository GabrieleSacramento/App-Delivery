import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 33),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/bottom/profilee.jpeg'),
          ),
          const SizedBox(
            width: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: SizedBox(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Olá, Luciana",
                    style: TextStyle(fontSize: 16),
                  ),
                  AutoSizeText(
                    "Encontre as comidas populares mais gostosas da região!",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                    maxLines: 3,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
