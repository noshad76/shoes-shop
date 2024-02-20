import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    super.key,
    required this.mediaQuery,
    required this.colors,
  });

  final Size mediaQuery;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: mediaQuery.height * 0.4,
        child: SizedBox(
          width: mediaQuery.width,
          height: 400,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.9, mainAxisSpacing: 20, crossAxisCount: 2),
            itemBuilder: (context, index) {
              return FittedBox(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(90),
                        topLeft: Radius.circular(90)),
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: colors[index],
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(90),
                                topLeft: Radius.circular(90),
                                bottomRight: Radius.circular(90)),
                          ),
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            r'assets\1.png',
                            alignment: Alignment.topLeft,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 100,
                              child: Text(
                                'University shoes for all people',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 12),
                              padding: const EdgeInsets.only(
                                  top: 3, bottom: 3, left: 8, right: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromARGB(255, 0, 255, 8)),
                              child: const Text(
                                'NEW',
                                style: TextStyle(
                                    fontSize: 8, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              r'$736.00',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Icon(Icons.arrow_forward)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}

class SeeAll extends StatelessWidget {
  const SeeAll({
    super.key,
    required this.mediaQuery,
  });

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: mediaQuery.height * 0.33,
        left: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'New Arrival',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
            const SizedBox(
              width: 200,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'See All',
                  style: TextStyle(color: Colors.grey),
                ))
          ],
        ));
  }
}
