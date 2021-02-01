import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrendListSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          mainSectionTopOption(isSelected: true, textValue: "Can"),
          mainSectionTopOption(isSelected: true, textValue: "Bins"),
          mainSectionTopOption(isSelected: true, textValue: "Beds"),
          mainSectionTopOption(isSelected: true, textValue: "Mat"),
          mainSectionTopOption(isSelected: true, textValue: "Wardrobes"),
        ],
      ),
    );
  }
}

Widget mainSectionTopOption({bool isSelected, String textValue}) {
  return FlatButton(
    // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    minWidth: 40,
    padding: EdgeInsets.all(0),
    onPressed: () {
      print("pressed on $textValue");
    },
    child: Column(
      children: [
        Text(
          textValue != null ? textValue : "N/a",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
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
