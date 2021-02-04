import 'package:flutter/material.dart';
import 'package:sacoffe/constant.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
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
        title: Text(
          "Profile",
          style: ThemeText.headerText,
        ),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 85,
                        backgroundColor: ColorPalette.primaryDarkColor,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/profile.jpg",
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        right: 8,
                        child: Container(
                          height: 40,
                          width: 40,
                          child: IconButton(
                            icon: Icon(
                              Icons.add_a_photo,
                              color: ColorPalette.primaryColor,
                              size: 25,
                            ),
                            onPressed: () {},
                          ),
                          decoration: BoxDecoration(
                              color: ColorPalette.primaryDarkColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //Form
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: ColorPalette.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: ColorPalette.primaryDarkColor,
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Username",
                      labelStyle: TextStyle(
                        color: ColorPalette.labelTextColor,
                      ),
                      
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: ColorPalette.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: ColorPalette.primaryDarkColor,
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: ColorPalette.labelTextColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: ColorPalette.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: ColorPalette.primaryDarkColor,
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "No Handphone",
                      labelStyle: TextStyle(
                        color: ColorPalette.labelTextColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: ColorPalette.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: ColorPalette.primaryDarkColor,
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Address",
                      labelStyle: TextStyle(
                        color: ColorPalette.labelTextColor,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                //button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: RaisedButton(
                      color: ColorPalette.primaryDarkColor,
                      onPressed: () {},
                      child: Text(
                        "Save",
                        style: ThemeText.buttonText,
                        textAlign: TextAlign.center,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20)),
                    ),
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
