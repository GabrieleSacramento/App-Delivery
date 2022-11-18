import 'package:flutter/material.dart';

class StatusBarWidget extends StatelessWidget {
  const StatusBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffE82D44),
              ),
              width: 161,
              height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 3.7, bottom: 3.7, left: 3.7),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(0xff, 254, 204, 214),
                          ),
                          foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(0xff, 70, 70, 70),
                          ),
                          minimumSize: MaterialStateProperty.all(
                            const Size(62, 16),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Delivery',
                          style: TextStyle(fontSize: 8),
                        ),
                      ),
                    ),
                  ),
                  const Text('|'),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(0xff, 70, 70, 70),
                      ),
                      minimumSize: MaterialStateProperty.all(
                        const Size(62, 16),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Retirada',
                      style: TextStyle(fontSize: 8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
