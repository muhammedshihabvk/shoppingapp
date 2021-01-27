import 'package:flutter/material.dart';

class TrendListSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mainSectionTopOption(
              isSelected: true, textValue: "Candles"),
          mainSectionTopOption(isSelected: true, textValue: "Bins"),
          mainSectionTopOption(isSelected: true, textValue: "Beds"),
          mainSectionTopOption(
              isSelected: true, textValue: "Mattresses"),
          mainSectionTopOption(
              isSelected: true, textValue: "Wardrobes"),
        ],
      ),
    );
  }
}

Widget mainSectionTopOption({bool isSelected, String textValue}) {
  return Container(
    margin: EdgeInsets.only(left: 5),
    padding: EdgeInsets.all(10),
    // color: Colors.deepOrange,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          textValue != null ? textValue : "N/a",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        isSelected == true
            ? Icon(
          Icons.circle,
          size: 10,
        )
            : SizedBox(),
      ],
    ),
  );
}

