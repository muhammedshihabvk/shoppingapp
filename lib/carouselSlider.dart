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
          boxFit: BoxFit.cover,
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 500),
          dotSize: 6.0,
          // dotIncreasedColor: Color(0xFF999999),
          dotIncreasedColor: Colors.deepOrange,
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.topRight,
          dotVerticalPadding: 10.0,
          showIndicator: true,
          indicatorBgPadding: 7.0,
          images: [
            Image.network(
              "https://pixabay.com/get/g35e390d7c29250912766db811342c11f1a1e743fdbc38184516e4098334b3faf98064a38ebd0ff1be33e8d630cfb77fe_1280.png",
              fit: BoxFit.cover,
            ),
            Image.asset(
              bed1,
              fit: BoxFit.cover,
            ),
            Image.asset(
              bed2,
              fit: BoxFit.cover,
            ),
            Image.asset(
              bed3,
              fit: BoxFit.cover,
            ),
            Image.asset(
              candle3,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
