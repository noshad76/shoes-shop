import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  const Chips({
    super.key,
    required this.mediaQuery,
  });

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: mediaQuery.height * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ChipCategory(
            mediaQuery: mediaQuery,
            color: const Color(0xFFFDEECD),
          ),
          const SizedBox(
            width: 30,
          ),
          ChipCategory(
            mediaQuery: mediaQuery,
            color: const Color(0xFFD2E4FB),
          ),
          const SizedBox(
            width: 30,
          ),
          ChipCategory(
            mediaQuery: mediaQuery,
            color: const Color(0xFFBBF4CB),
          ),
        ],
      ),
    );
  }
}

class ChipCategory extends StatelessWidget {
  const ChipCategory({
    super.key,
    required this.mediaQuery,
    required this.color,
  });
  final Color color;
  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: mediaQuery.height * 0.25,
      left: mediaQuery.width * 0.05,
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        width: 100,
        height: 40,
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () {},
            child: Stack(
              children: [
                const Positioned(
                  left: 15,
                  top: 10,
                  child: Text(
                    'Shoes',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 64, 64, 64)),
                  ),
                ),
                Positioned(
                  left: 65,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                        border: Border.all(color: Colors.white, width: 8)),
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
