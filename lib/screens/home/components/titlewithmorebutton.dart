import 'package:flutter/material.dart';
import 'package:flutter_tripappui/constrants.dart';

class titlewithmorebutton extends StatelessWidget {
  const titlewithmorebutton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaultpadding),
      child: Row(
        children: [
          titlewithcustomunderline(
            text: title,
          ),
          Spacer(),
          ElevatedButton(
              onPressed: press(),
              child: Text(
                "More",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: kprimarycolor,
              ))
        ],
      ),
    );
  }
}

class titlewithcustomunderline extends StatelessWidget {
  const titlewithcustomunderline({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kdefaultpadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: EdgeInsets.only(right: kdefaultpadding) / 4,
              height: 5,
              color: kprimarycolor.withOpacity(0.1),
            ),
          )
        ],
      ),
    );
  }
}
