import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/assets.dart';

class CarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 200,
        child: Carousel(
          // boxFit: BoxFit.cover,
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 500),
          dotSize: 6.0,
          dotIncreasedColor: Color(0xFFFF335C),
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.topRight,
          dotVerticalPadding: 10.0,
          showIndicator: true,
          indicatorBgPadding: 7.0,
          images: [
            Image.network("https://www.urbanwood.in/mobile/images/home/banner.jpg?v=6",fit: BoxFit.cover,),
            Image.asset(bed1,fit: BoxFit.cover,),
            Image.asset(bed2,fit: BoxFit.cover,),
            Image.asset(bed3,fit: BoxFit.cover,),
            Image.asset(candle3,fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
