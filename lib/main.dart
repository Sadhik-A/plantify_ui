import 'package:flutter/material.dart';
import 'package:flutter_tripappui/constrants.dart';
import 'package:flutter_tripappui/screens/home/components/Home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Plant App',
        theme: ThemeData(
          scaffoldBackgroundColor: kbackgroundcolor,
          primaryColor: kprimarycolor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: ktextcollor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomeScreen());
  }
}
