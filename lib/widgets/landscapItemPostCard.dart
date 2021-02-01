import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/skuDetailsPage.dart';

class LandscapItemPostCard extends StatelessWidget {

  String skuImage;
  String skuName;
  String skuPrice;

  LandscapItemPostCard({this.skuImage,this.skuPrice,this.skuName});


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // print("tapped on $skuName $skuPrice\$");
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return SkuDetailsPage(skuImgLoc: skuImage,);
        }));
      },
      child: Container(
        // color: Colors.lightGreen,
        height: screenHeight * .35,
        width: screenWidth * .7,
        // width: 250,
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    // topRight: Radius.circular(30),
                    // bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                child: Image.asset(
                  skuImage,
                  fit: BoxFit.cover,
                  height: 150,
                  width: 130,
                )),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      // width: 120,
                          margin: EdgeInsets.only(left: 10),
                        child: Text(
                          skuName,maxLines: 4,overflow: TextOverflow.ellipsis,textDirection: TextDirection.ltr,softWrap: true,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),
                        )),
                  ),
                  Container(
                      // width: 120,
                       margin: EdgeInsets.only(left: 10),
                      child: Text("\$$skuPrice",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
