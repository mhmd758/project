import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:admin/responsive.dart';
import 'package:admin/screens/main/components/side_menu.dart';

class OR extends StatefulWidget {
  static const String id = 'OR';
  State<StatefulWidget> createState() {
    return HomeState();
  }
}
class HomeState extends State<OR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "hospital system",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
        centerTitle: true,
        elevation: 20,
      ),
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: ListView(children: <Widget>[
                Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    children: <Widget>[
                      InkWell(
                        child: GridTile(
                          child: Image.asset('images/Ventilator.jpg'),
                          footer: Container(
                            color: Colors.black.withOpacity(0.0005),
                            child: Text(
                              'Ventilator',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onTap: () {
                          print("tap");
                        
                        },
                      ),
                      InkWell(
                        child: GridTile(
                          child: Image.asset('images/Anesthesia.jpeg'),
                          footer: Container(
                            color: Colors.black.withOpacity(0.0005),
                            child: Text(
                              'Anesthesia',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onTap: () {
                          print("tap");
                        },
                      ),
                      ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
