import 'package:flutter/material.dart';
import 'package:flutter_application_5/routes/product_route.dart';

class OfferProduct extends StatelessWidget {
  const OfferProduct({
    super.key,
    required this.mediaQuery,
  });

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      right: 20,
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 94, 199, 178),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        width: mediaQuery.width * 0.9,
        height: 150,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ProductPage();
                },
              ));
            },
            child: Stack(
              children: [
                Positioned(
                    top: -50,
                    right: -10,
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFFFCE3AA),
                              Color.fromARGB(255, 2, 216, 174),
                            ],
                          ),
                          shape: BoxShape.circle),
                      child: Image.asset(r'assets\1.png'),
                    )),
                Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFFCE3AA), shape: BoxShape.circle),
                      height: 70,
                      width: 70,
                      child: Transform(
                        alignment: const Alignment(0.5, -1.2),
                        transform: Matrix4.identity()
                          ..rotateZ(-30 * 3.1415927 / 180),
                        child: const Text(
                          "30 %     OFF",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    )),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Row(
                    children: [
                      IntrinsicWidth(
                        child: Column(
                          children: [
                            const Text(
                              'Discover More',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Container(height: 1, color: Colors.black),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
