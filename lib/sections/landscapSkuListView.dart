import 'package:flutter/material.dart';
import 'package:shoppingapp/assets.dart';
import 'package:shoppingapp/widgets/landscapItemPostCard.dart';

class LandscapSkuLIstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      // padding: EdgeInsets.only(left: 10,right: 10,top: 10),
      padding: EdgeInsets.only(left: 5),
      height: screenHeight*0.3,
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            LandscapItemPostCard(skuName: "Candle tree wan",skuImage: candle3,skuPrice: "20",),
            LandscapItemPostCard(skuName: "Key Chain medon visk show case",skuImage: keyChain2,skuPrice: "50",),
            LandscapItemPostCard(skuName: "Candle medon visk",skuImage: candle4,skuPrice: "50",),
            LandscapItemPostCard(skuName: "Candle beer life",skuImage: candle1,skuPrice: "70",),
          ],
        ),
      ),
    );
  }
}
