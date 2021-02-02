import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/myHomePage.dart';
import 'package:shoppingapp/sections/bottonNavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 60,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: FlatButton(
                onPressed: () {
                  print("pressed on drawer");
                },
                child: Icon(
                  Icons.article_rounded,
                  size: 35,
                  color: Colors.grey,
                )),
            actions: [
              Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange[500],
                  ),
                  child: FlatButton(
                      minWidth: 30,
                      onPressed: () {
                        print("clicked on search button");
                      },
                      child: Icon(Icons.search_rounded))
              ),
            ],
          ),
          body: MyHomePage(),
          bottomNavigationBar: BottomNavBar(),

        )
    );
  }
}
