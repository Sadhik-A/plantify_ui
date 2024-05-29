import 'package:flutter/material.dart';
import 'package:flutter_tripappui/constrants.dart';

class bottombar extends StatelessWidget {
  const bottombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kdefaultpadding * 2,
          right: kdefaultpadding * 2,
          bottom: kdefaultpadding),
      height: 80,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(offset: Offset(0, -10), blurRadius: 35, color: Colors.white)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
            color: kprimarycolor,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person))
        ],
        
      ),
    );
  }
}
