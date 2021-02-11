import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  ResultPage(
      {@required this.bmi,
      @required this.result,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your Result',
                style: kResultText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result.toUpperCase(),
                    style: kResultstyle,
                  ),
                  Text(
                    bmi,
                    style: kBMIstyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kResultWordStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
