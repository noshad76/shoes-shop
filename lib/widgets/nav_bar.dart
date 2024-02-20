import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<CustomNavigationBar> {
  int currunt = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40, left: 15, right: 15),
      width: 400,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 1),
              blurRadius: 2,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                currunt = 1;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: currunt == 1
                      ? const Color.fromARGB(255, 11, 115, 14)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 1),
                      blurRadius: 2,
                    )
                  ]),
              width: 50,
              height: 50,
              child: Icon(
                Icons.home,
                color: currunt == 1 ? Colors.white : Colors.grey,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currunt = 2;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: currunt == 2
                      ? const Color.fromARGB(255, 11, 115, 14)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 1),
                      blurRadius: 2,
                    )
                  ]),
              width: 50,
              height: 50,
              child: Icon(
                Icons.layers,
                color: currunt == 2 ? Colors.white : Colors.grey,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currunt = 3;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: currunt == 3
                      ? const Color.fromARGB(255, 11, 115, 14)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 1),
                      blurRadius: 2,
                    )
                  ]),
              width: 50,
              height: 50,
              child: Icon(
                Icons.heart_broken,
                color: currunt == 3 ? Colors.white : Colors.grey,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currunt = 4;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: currunt == 4
                      ? const Color.fromARGB(255, 11, 115, 14)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 1),
                      blurRadius: 2,
                    )
                  ]),
              width: 50,
              height: 50,
              child: Icon(
                Icons.person,
                color: currunt == 4 ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
