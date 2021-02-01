import 'package:flutter/material.dart';

class LineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 10),
      decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        height: 5,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.all(Radius.circular(10)),

        ),
      ),
    );
  }
}
