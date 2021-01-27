import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/carouselSlider.dart';
import 'package:shoppingapp/sections/headerNameSection.dart';
import 'package:shoppingapp/sections/topHorizontalMenueSection.dart';
import 'package:shoppingapp/sections/trendListSection.dart';
import 'package:shoppingapp/widgets/itemPostCard.dart';
import 'assets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                      child: Icon(Icons.search_rounded))),
            ],
          ),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              HeaderNameSection(),
              TopHorizontalMenueSection(),
              CarouselSlider(),
              TrendListSection(),
              SizedBox(
                height: 30,
                child: Center(
                    child: Text(
                  "New Trend",
                  style: GoogleFonts.aclonica(
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
              ),
              Container(
                height: 220,
                padding: EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey[200],
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ItemPostCard(
                          skuImage: keyChain1,
                          skuName: "keychain dude",
                          skuPrice: "30"),
                      ItemPostCard(
                          skuImage: candle1, skuName: "candle", skuPrice: "10"),
                      ItemPostCard(
                          skuImage: bed5, skuName: "candle", skuPrice: "200"),
                      ItemPostCard(
                          skuImage: keyChain4,
                          skuName: "Key chain",
                          skuPrice: "50"),
                      ItemPostCard(
                          skuImage: bed3,
                          skuName: "Key chain",
                          skuPrice: "450"),
                      ItemPostCard(
                          skuImage: bed4,
                          skuName: "Key chain",
                          skuPrice: "350"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

