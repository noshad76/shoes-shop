import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductBody(),
    );
  }
}

class ProductBody extends StatefulWidget {
  const ProductBody({super.key});

  @override
  State<ProductBody> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductBody> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [TopProductBody(), BotProductBody()],
    );
  }
}

class BotProductBody extends StatefulWidget {
  const BotProductBody({super.key});

  @override
  State<BotProductBody> createState() => _BotProductBodyState();
}

class _BotProductBodyState extends State<BotProductBody> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          width: 350,
          top: 520,
          left: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Size',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              Text(
                'size gide',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        Positioned(
          top: 570,
          left: 30,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    group = 0;
                  });
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: group == 0 ? Colors.black : Colors.grey,
                  ),
                  child: Center(
                      child: Text(
                    5.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: group == 0 ? Colors.white : Colors.black),
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    group = 1;
                  });
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: group == 1 ? Colors.black : Colors.grey,
                  ),
                  child: Center(
                      child: Text(
                    5.5.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: group == 1 ? Colors.white : Colors.black),
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    group = 2;
                  });
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: group == 2 ? Colors.black : Colors.grey,
                  ),
                  child: Center(
                      child: Text(
                    6.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: group == 2 ? Colors.white : Colors.black),
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    group = 3;
                  });
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: group == 3 ? Colors.black : Colors.grey,
                  ),
                  child: Center(
                      child: Text(
                    6.5.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: group == 3 ? Colors.white : Colors.black),
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    group = 4;
                  });
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: group == 4 ? Colors.black : Colors.grey,
                  ),
                  child: Center(
                      child: Text(
                    7.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: group == 4 ? Colors.white : Colors.black),
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    group = 5;
                  });
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: group == 5 ? Colors.black : Colors.grey,
                  ),
                  child: Center(
                      child: Text(
                    7.5.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: group == 5 ? Colors.white : Colors.black),
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    group = 6;
                  });
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: group == 6 ? Colors.black : Colors.grey,
                  ),
                  child: Center(
                      child: Text(
                    8.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: group == 6 ? Colors.white : Colors.black),
                  )),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
        const Positioned(
          top: 630,
          left: 20,
          child: Text(
            'Description:',
            style: TextStyle(color: Color.fromARGB(255, 47, 47, 47)),
          ),
        ),
        const Positioned(
          top: 665,
          left: 20,
          width: 360,
          child: Text(
            "Nike is a global leader in athletic footwear and apparel, known for innovation and iconic sports brandingNike is a global leader in athletic footwear and apparel, known for innovation and iconic sports branding",
            style:
                TextStyle(color: Color.fromARGB(255, 47, 47, 47), fontSize: 11),
          ),
        ),
        Positioned(
          top: 720,
          left: 20,
          width: 350,
          height: 60,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
                backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 0, 156, 94))),
            child: const Text(
              'Add to Cart',
              style: TextStyle(color: Colors.white, fontSize: 23),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class TopProductBody extends StatefulWidget {
  const TopProductBody({super.key});

  @override
  State<TopProductBody> createState() => _ProductBodyState();
}

class _ProductBodyState extends State<TopProductBody> {
  bool isliked = true;
  int indicator = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Background(size: size),
        Positioned(
          left: 35,
          top: 220,
          child: Transform(
            alignment: const FractionalOffset(0, 1),
            transform: Matrix4.identity()..rotateZ(-15 * 3.1415927 / 180),
            child: const Text(
              'NIKE',
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 170,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Positioned(
          left: 20,
          top: 125,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nike Air Special',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 28),
              ),
              Row(
                children: [
                  Text('Edition',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 28)),
                  Icon(
                    Icons.arrow_forward,
                    size: 40,
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 185,
          right: 10,
          child: Transform(
            transform: Matrix4.identity()..rotateZ(-90 * 3.1415927 / 180),
            child: Container(
              width: 50,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  r'$60',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 170,
          child: SizedBox(
            height: 300,
            width: size.width,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  indicator = value;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Image.asset(
                    r'assets\1.png',
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          height: 10,
          top: 450,
          left: size.width * 0.45,
          child: Row(
            children: [
              Container(
                width: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: indicator == 0 ? Colors.black : Colors.grey),
              ),
              const SizedBox(width: 5),
              Container(
                width: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: indicator == 1 ? Colors.black : Colors.grey),
              ),
              const SizedBox(width: 5),
              Container(
                width: 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: indicator == 2 ? Colors.black : Colors.grey),
              ),
            ],
          ),
        ),
        Positioned(
          height: 10,
          top: 450,
          left: size.width * 0.8,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (indicator != 0) {
                      indicator--;
                      pageController.animateToPage(
                        indicator,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  });
                },
                child: Container(
                  width: 25,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 11,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  if (indicator != 2) {
                    indicator++;
                    pageController.animateToPage(
                      indicator,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Container(
                  width: 25,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 11,
                  ),
                ),
              ),
            ],
          ),
        ),
        appbar(size, context),
      ],
    );
  }

  SizedBox appbar(Size size, BuildContext context) {
    return SizedBox(
      height: 150,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: const FittedBox(
                child: Icon(
                  Icons.arrow_back_ios_sharp,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isliked = !isliked;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isliked
                    ? Colors.black
                    : const Color.fromARGB(238, 109, 109, 109),
              ),
              child: FittedBox(
                child: Icon(
                  Icons.favorite,
                  color: isliked ? Colors.green : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildLayout(
      delegate: MyLayoutDelegate(500.0),
      child: Transform(
        alignment: const FractionalOffset(0, 1),
        transform: Matrix4.identity()..rotateZ(-15 * 3.1415927 / 180),
        child: Container(
          height: size.height * 0.6,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0xFFFCE3AA),
                  Color(0xFF02D8AE),
                ],
              )),
        ),
      ),
    );
  }
}

class MyLayoutDelegate extends SingleChildLayoutDelegate {
  final double desiredWidth;

  MyLayoutDelegate(this.desiredWidth);

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints(
      maxWidth: desiredWidth,
      minHeight: constraints.minHeight,
      maxHeight: constraints.maxHeight,
    );
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(desiredWidth, constraints.maxHeight);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }
}
