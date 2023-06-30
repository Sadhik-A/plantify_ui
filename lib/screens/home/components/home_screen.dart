// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:flutter_tripappui/constrants.dart';
import 'package:flutter_tripappui/screens/home/components/body.dart';

import 'bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
      bottomNavigationBar: bottombar(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: kprimarycolor,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      elevation: 0,
    );
  }
}
