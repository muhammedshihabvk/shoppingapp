import 'package:flutter/material.dart';

class TopHorizontalMenueSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(left: 10, top: 20,),
      margin: EdgeInsets.only(bottom: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          HomeTopRedButton(
            buttonText: "General",
            bgflag: true,
            textColor: Colors.white,
            bgsplashColor: Colors.red,
            onpressFunction: () {
              print("Pressed on General");
            },
          ),
          HomeTopRedButton(
            buttonText: "Bath & Clean",
            textColor: Colors.black,
            bgsplashColor: Colors.black,
            bgflag: false,
            onpressFunction: () {
              print("Pressed on Bath & clean");
            },
          ),
          HomeTopRedButton(
            buttonText: "Beauty",
            bgflag: false,
            textColor: Colors.black,
            bgsplashColor: Colors.black,
            onpressFunction: () {
              print("Pressed on Beauty");
            },
          ),
          HomeTopRedButton(
            buttonText: "Festive Decor & Gifts",
            bgflag: false,
            textColor: Colors.black,
            bgsplashColor: Colors.black,
            onpressFunction: () {
              print("Pressed on Festive Decor & Gifts");
            },
          ),
          HomeTopRedButton(
            buttonText: "Kitchen",
            bgflag: false,
            textColor: Colors.black,
            bgsplashColor: Colors.black,
            onpressFunction: () {
              print("Pressed on Kitchen");
            },
          ),
        ],
      ),
    );
  }
}

Widget HomeTopRedButton(
    {String buttonText,
    void Function() onpressFunction,
    Color bgColor,
    Color bgsplashColor,
    Color textColor,
    bool bgflag}) {
  return Container(
    margin: EdgeInsets.only(left: 5),
    child: FlatButton(
      onPressed: onpressFunction,
      child: Text(
        buttonText,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: textColor, fontSize: 15),
      ),
      shape: StadiumBorder(),
      color: bgflag == true ? Colors.deepOrange[500] : Colors.grey,
      splashColor: bgsplashColor,
    ),
  );
}
