import 'package:flutter/material.dart';
import 'package:sacoffe/constant.dart';
import 'package:sacoffe/screens/profile_screen.dart';
import 'package:sacoffe/screens/side_menu_sreen.dart';
import 'package:sacoffe/screens/list_screen.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            "SaCoffee",
            style: ThemeText.headerText,
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: IconButton(
            icon: Icon(Icons.menu, color: ColorPalette.primaryDarkColor),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SideMenuScreen(),
                ),
              );
            },
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
                color: ColorPalette.primaryDarkColor,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
              color: ColorPalette.primaryDarkColor,
            ),
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Hello, Salsa',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Welcome to the SaCoffee',
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/outdoor_area.jpg",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/relaxing_area.jpg",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/indoor_area.jpg",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  'Category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    //Expand Drink
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                ListScreen(listType: "DRINK", menu: null),
                          ),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/milkshake_caramel.jpg",
                                      ),
                                      fit: BoxFit.cover))),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: ColorPalette.primaryDarkColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Text("Drink",
                                      style: ThemeText.secondaryText,
                                      textAlign: TextAlign.center),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    //Expand Food
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                ListScreen(listType: "FOOD", menu: null),
                          ),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/aceh_noodles_1.jpg",
                                      ),
                                      fit: BoxFit.cover))),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: ColorPalette.primaryDarkColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Text("Food",
                                      style: ThemeText.secondaryText,
                                      textAlign: TextAlign.center),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    //Expand Cake
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                ListScreen(listType: "CAKE", menu: null),
                          ),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/cake.jpg",
                                      ),
                                      fit: BoxFit.cover))),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: ColorPalette.primaryDarkColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Text("Cake",
                                      style: ThemeText.secondaryText,
                                      textAlign: TextAlign.center),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    //Expand Coffee
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ListScreen(
                              listType: "COFFEE",
                              menu: null,
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/coffee.jpg",
                                      ),
                                      fit: BoxFit.cover))),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: ColorPalette.primaryDarkColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Text("Coffee",
                                      style: ThemeText.secondaryText,
                                      textAlign: TextAlign.center),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ]),
    );
  }
}
