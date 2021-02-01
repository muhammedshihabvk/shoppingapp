import 'package:flutter/material.dart';

class SkuDetailsPage extends StatelessWidget {
  String skuImgLoc;
  bool favFlag;
  String skuPrice;
  String skuName;

  SkuDetailsPage({this.skuImgLoc, this.favFlag,this.skuPrice,this.skuName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          skuImgLoc,
          height: MediaQuery.of(context).size.height * .68,
          fit: BoxFit.fitHeight,
        ),
        SizedBox(
          height: 50,
        ),
        IconButton(
          icon: Icon(Icons.close_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
          padding: EdgeInsets.only(top: 65, left: 30),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            // padding: EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
            decoration: BoxDecoration(
              color: Colors.blueGrey[500],
              borderRadius: BorderRadius.all(Radius.circular(30)),
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(30), topRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
            ),
            child: Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$skuName",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Text(
                            "$skuPrice\$",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            "QTY",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "16cm",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Text("Details",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),),
                      trailing: Icon(Icons.add,size: 30,color: Colors.white,),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                      ListTile(
                        leading: Text("Shipping and Return",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),),
                        trailing: Icon(Icons.add,size: 30,color: Colors.white,),
                      ),
                    ],
                  ),
                )),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(32),
                        bottomLeft: Radius.circular(32)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white38),
                        child: favFlag == true
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                      ),
                      FlatButton.icon(
                        onPressed: () {
                          print("sku added to cart");
                        },
                        splashColor: Colors.blueGrey,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * .2,
                            vertical: 8),
                        shape: StadiumBorder(),
                        icon: Icon(Icons.add_shopping_cart),
                        label: Text(
                          "Add To Cart",
                          style: TextStyle(fontSize: 19),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
