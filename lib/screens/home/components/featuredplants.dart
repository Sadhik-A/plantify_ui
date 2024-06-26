import 'package:flutter/material.dart';
import 'package:flutter_tripappui/constrants.dart';
import 'package:flutter_tripappui/screens/home/components/body.dart';

class featuredPlants extends StatelessWidget {
  const featuredPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          featuredplantcard(
            image: "assets/pots-decor.jpg",
            press: () {},
          ),
          featuredplantcard(
            image: "assets/fjasmin.jpg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class featuredplantcard extends StatelessWidget {
  const featuredplantcard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
            left: kdefaultpadding,
            bottom: kdefaultpadding / 2,
            top: kdefaultpadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      ),
    );
   
}
