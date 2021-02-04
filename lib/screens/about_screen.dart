import 'package:flutter/material.dart';
import 'package:sacoffe/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      appBar: AppBar(
        title: Text(
          "About Us",
          style: ThemeText.headerText,
        ),
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorPalette.primaryDarkColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          color: ColorPalette.primaryDarkColor,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 250,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 55,
                      backgroundColor: ColorPalette.primaryColor,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          "assets/images/about_us.jpg",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Application SaCoffe",
                          style: GoogleFonts.staatliches(
                            fontSize: 20,
                            color: ColorPalette.buttonTextColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Rahmadilla Salsabila Mahdison",
                          style: ThemeText.secondaryText,
                        ),
                        Text(
                          "rahmadillasm@gmail.com",
                          style: ThemeText.secondaryText
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
