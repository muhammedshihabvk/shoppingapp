import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/assets.dart';
import 'package:shoppingapp/widgets/itemPostCard.dart';

class TrendListSkuViewScroll extends StatelessWidget {

  String heading;

  TrendListSkuViewScroll({this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.grey[200],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          centreHeadingSection(headingText: heading),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ItemPostCard(
                    skuImage: keyChain1, skuName: "keychain dude", skuPrice: "30"),
                ItemPostCard(skuImage: candle1, skuName: "candle", skuPrice: "10"),
                ItemPostCard(skuImage: bed5, skuName: "candle", skuPrice: "200"),
                ItemPostCard(
                    skuImage: keyChain4, skuName: "Key chain", skuPrice: "50"),
                ItemPostCard(skuImage: bed3, skuName: "Key chain", skuPrice: "450"),
                ItemPostCard(skuImage: bed4, skuName: "Key chain", skuPrice: "350"),
              ],
            ),
          ),
        ]
      ),
    );
  }
}


Widget centreHeadingSection({String headingText}){
 return  SizedBox(
    height: 35,
    child: Center(
        child: Text(
          headingText != null ? headingText : "",
          style: GoogleFonts.aclonica(
            // fontWeight: FontWeight.bold,
              fontSize: 15,
              letterSpacing: 4),
        )),
  );
}