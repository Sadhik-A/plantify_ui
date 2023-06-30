import 'package:flutter/material.dart';
import 'package:flutter_tripappui/constrants.dart';
import 'package:flutter_tripappui/screens/details/components/detail_screen.dart';
import 'package:flutter_tripappui/screens/home/components/body.dart';

class recomendsplants extends StatelessWidget {
  const recomendsplants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          recomendplantcard(
            title: "Samantha",
            price: 29,
            country: "Russia",
            press: () {},
            image: "assets/pots-decor.jpg",
          ),
          recomendplantcard(
            title: "Lavender",
            price: 799,
            country: "London",
            press: () {},
            image: "assets/bouquet1.jpg",
          ),
          recomendplantcard(
            title: "Yellowlilly",
            price: 199,
            country: "India",
            press: () {},
            image: "assets/yellowlilly.jpg",
          ),
        ],
      ),
    );
  }
}

class recomendplantcard extends StatelessWidget {
  const recomendplantcard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kdefaultpadding,
          top: kdefaultpadding / 2,
          bottom: kdefaultpadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kdefaultpadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kprimarycolor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(
                          color: kprimarycolor.withOpacity(0.3),
                        ))
                  ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kprimarycolor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
