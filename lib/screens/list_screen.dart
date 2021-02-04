import 'package:flutter/material.dart';
import 'package:sacoffe/constant.dart';
import 'package:sacoffe/models/menu.dart';
import 'package:sacoffe/screens/detail_screen.dart';

class ListScreen extends StatefulWidget {
  final Menu menu;
  final String listType;

  ListScreen({@required this.menu, this.listType});

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  String get listType { //getter pake widget
    return widget.listType;
  }

  @override
  Widget build(BuildContext context) {
    print(this.listType);
    String screenTitle = "List";
    if (this.listType == "DRINK") {
      screenTitle = "List of Drinks";
    } else if (this.listType == "FOOD") {
      screenTitle = "List of Foods";
    } else if (this.listType == "CAKE") {
      screenTitle = "List of Cakes";
    } else if (this.listType == "COFFEE") {
      screenTitle = "List of Coffees";
    }
    
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      appBar: AppBar(
        title: Text(
          screenTitle,
          style: ThemeText.headerText,
        ),
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
      body: ListView(
        children: menuList.where((item) { //kondisi berdasarkan type nya
          print(item.type);
          return item.type.toLowerCase() == this.listType.toLowerCase();
          }).map((menu) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                print(this.listType);
                return DetailScreen(menu);
              }));
            },
            child: Card(
              color: ColorPalette.primaryDarkColor,
              child: Container(
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            menu.imageAsset,
                            fit: BoxFit
                                .fitWidth, //untuk ngepasin foto sama box nya
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              menu.name,
                              style: ThemeText.secondaryText,
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.yellow[700],
                                  size: 18,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  menu.rating,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorPalette.buttonTextColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              menu.price,
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorPalette.buttonTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
