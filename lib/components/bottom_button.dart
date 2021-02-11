import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  BottomButton({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(title, style: kLargeTextStyle)),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
