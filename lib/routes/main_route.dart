import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/main_appbar.dart';
import 'package:flutter_application_5/widgets/mainbody/main_body.dart';
import 'package:flutter_application_5/widgets/nav_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: MyBody(),
        appBar: CustomAppBar(),
        backgroundColor: Colors.white,
        extendBody: true,
        bottomNavigationBar: CustomNavigationBar());
  }
}
