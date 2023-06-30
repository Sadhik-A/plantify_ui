import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tripappui/constrants.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          bottom: kdefaultpadding * 2.5,
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: kdefaultpadding,
                  right: kdefaultpadding,
                  bottom: 36 * kdefaultpadding,
                  top: kdefaultpadding),
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                  color: kprimarycolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36))),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kprimarycolor.withOpacity(0.5),
                      )
                    ]),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: kdefaultpadding, top: 14, right: kdefaultpadding),
                    hintTextDirection: TextDirection.ltr,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: kprimarycolor.withOpacity(0.5), fontSize: 17),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      child: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25, top: 10),
                  child: SizedBox(
                    child: Text(
                      "Plantify",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: Image.network(
                    "https://i.gifer.com/ZdPH.gif",
                    height: 70,
                    width: 51,
                    scale: 1.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 170,
              child: Container(),
            ),
          ],
        ));
  }
}
