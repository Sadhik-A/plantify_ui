import 'package:flutter/material.dart';
import 'package:flutter_tripappui/constrants.dart';
import 'package:flutter_tripappui/screens/home/components/header_withsearchbar.dart';
import 'package:flutter_tripappui/screens/home/components/recomended_plants.dart';
import 'package:flutter_tripappui/screens/home/components/titlewithmorebutton.dart';
import 'featuredplants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          header(size: size),
          titlewithmorebutton(
            title: "Recomended",
            press: () {},
          ),
          recomendsplants(),
          titlewithmorebutton(title: "Featured", press: () {}),
          featuredPlants(),
          SizedBox(
            height: kdefaultpadding,
          )
        ],
      ),
    );
  }
}
