import 'package:flutter/material.dart';

class StatusBarWidget extends StatelessWidget {
  const StatusBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffE82D44),
              ),
              width: 161,
              height: 24,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 4, left: 110, top: 7),
                child: Text(
                  'Retirada',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 5),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: 1,
                height: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.7, left: 3.7),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xfffeccd6),
                ),
                width: 62,
                height: 16,
                child: Center(
                  child: Text(
                    'Delivery',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
