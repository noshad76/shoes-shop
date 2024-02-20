
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const Column(
        children: [
          SizedBox(height: 20),
          Text(
            'WELCOME',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            'lets explore trends',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 12),
          )
        ],
      ),
      leading: Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        child: const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 35, 125, 144),
          backgroundImage: AssetImage(r'assets\1.png'),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(right: 20, top: 16),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 195, 194, 194),
            ),
            child: const Icon(Icons.search, color: Colors.black54),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size(5, 60);
}
