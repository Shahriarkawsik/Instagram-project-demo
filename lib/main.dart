import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'home_page.dart';
import 'logInPage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double offsetValue = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Instagram Project',
      home: SlideDrawer(
        offsetFromRight: 200.0,
        headDrawer: Image.asset("assets/images/image-02.jpg",
            fit: BoxFit.cover,height: 250),
        duration: Duration(milliseconds: 1000),
        isRotate: false,
        items: [
          MenuItem('Log in', icon: Icons.account_circle, onTap: (){}),
          MenuItem('Home',icon: Icons.home, onTap: (){}),
          MenuItem('Profile',icon: Icons.people_alt, onTap: (){}),
          MenuItem('Project',icon: Icons.rss_feed, onTap: (){}),
          MenuItem('Favourite',icon: Icons.favorite_border, onTap: (){}),
          MenuItem('Setting',icon: Icons.settings, onTap: (){}),
        ],
        brightness: Brightness.dark,
        backgroundGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Color(0xFF000046),
            Color(0xFF1CB5E0),
          ],
        ),
        child: LogInPage(),
      ),
    );
  }
}



