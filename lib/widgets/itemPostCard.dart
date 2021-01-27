import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemPostCard extends StatelessWidget {

  String skuImage;
  String skuName;
  String skuPrice;

  ItemPostCard({this.skuImage,this.skuName,this.skuPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      // color: Colors.blue,
      width: 150,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(5)
              ),
              child: Image.asset(skuImage,fit: BoxFit.cover,height: 140,
              )),
          Text(skuName,style: GoogleFonts.laila(fontSize: 13,fontWeight:FontWeight.bold ,),),
          Text("\$$skuPrice",style: GoogleFonts.laila(fontSize: 13,fontWeight:FontWeight.w800 ,),),
        ],
      ),
    );
  }
}
