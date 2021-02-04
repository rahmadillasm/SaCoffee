import 'package:flutter/material.dart';
import 'package:sacoffe/constant.dart';
import 'package:sacoffe/screens/about_screen.dart';
import 'package:sacoffe/screens/signin_screen.dart';

class SideMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorPalette.primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "SaCoffee",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.buttonTextColor),
              ),
              decoration: BoxDecoration(
                color: ColorPalette.primaryDarkColor,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/indoor_area.jpg"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About Us"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log out"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
