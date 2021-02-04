import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sacoffe/constant.dart';
import 'package:sacoffe/models/menu.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailScreen extends StatelessWidget {
  final Menu menu;

  DetailScreen(this.menu);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottomOpacity: 0,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(menu.imageAsset), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 260),
                  padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: ColorPalette.primaryColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 35,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        menu.name,
                                        style: GoogleFonts.staatliches(
                                          fontSize: 25,
                                          color: ColorPalette.primaryDarkColor,
                                        ),
                                      ),
                                    ),
                                    FavoriteButton(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          menu.description,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.timer_sharp,
                                  size: 30,
                                ),
                                SizedBox(height: 8),
                                Text(menu.timeServed),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.star_rate,
                                  size: 30,
                                ),
                                SizedBox(height: 8),
                                Text(menu.rating),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.monetization_on,
                                  size: 30,
                                ),
                                SizedBox(height: 8),
                                Text(menu.price),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 150,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: menu.imageAssets.map((item) => Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        item,fit: BoxFit.cover,
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      SizedBox(height: 10),
                      RatingBar(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 30,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class RatingBar extends StatefulWidget {
  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorPalette.primaryDarkColor,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: 90,
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Rate this Menu",
                style: ThemeText.secondaryText,
              ),
              SizedBox(height: 8),
              SmoothStarRating(
                starCount: 5,
                isReadOnly: false,
                size: 32,
                spacing: 5,
                rating: rating,
                color: Colors.yellow[600],
                borderColor: Colors.yellow[600],
                allowHalfRating: true,
                onRated: (value) {
                  setState(() {
                    rating = value;
                  });
                },
              ),
              SizedBox(height: 8),
              Text(
                "Rating = " + "$rating",
                style: TextStyle(
                    fontSize: 14, color: ColorPalette.buttonTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
