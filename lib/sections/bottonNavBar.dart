import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double screemHeight = MediaQuery.of(context).size.height;

    return Container(
      height: 60,
      decoration: BoxDecoration(
        // boxShadow: [BoxShadow(blurRadius: 15,spreadRadius: 1,color: Colors.blueGrey)],
        color: Colors.grey[300],
        // color: Colors.transparent,

        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottonNavIcon(iconNAme: Icons.person),
          bottonNavIcon(iconNAme: Icons.shopping_cart_outlined),
          bottonNavIcon(iconNAme: Icons.home, isSelected: true),
          bottonNavIcon(iconNAme: Icons.add_location_alt_outlined),
          bottonNavIcon(iconNAme: Icons.more_outlined),
        ],
      ),
    );
  }

  Container bottonNavIcon({
    isSelected = false,
    IconData iconNAme,
  }) {
    return Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected == true ? Colors.red : Colors.white,
            boxShadow: isSelected == true
                ? [
                    BoxShadow(
                        color: Colors.blueGrey, blurRadius: 5, spreadRadius: 1)
                  ]
                : []),
        child: Icon(iconNAme,color: isSelected ? Colors.white : Colors.black,size: 30,));
  }
}
