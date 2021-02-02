import 'package:flutter/material.dart';
import 'package:shoppingapp/sections/headerNameSection.dart';
import 'package:shoppingapp/sections/landscapSkuListView.dart';
import 'package:shoppingapp/sections/topHorizontalMenueSection.dart';
import 'package:shoppingapp/sections/trendListSection.dart';
import 'package:shoppingapp/sections/trendListSkuViewScroll.dart';
import 'package:shoppingapp/widgets/lineBar.dart';

import '../carouselSlider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        HeaderNameSection(),
        TopHorizontalMenueSection(),
        CarouselSlider(),
        TrendListSection(),
        TrendListSkuViewScroll(heading: "New Trend",),
        LineBar(),
        Container(
            height: 35,
            child: centreHeadingSection(headingText: "Offer Sale")),
        LandscapSkuLIstView(),
        TrendListSkuViewScroll(heading: "Holiday Special",),

      ],
    );
  }
}
