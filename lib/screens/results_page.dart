import 'file:///C:/Users/OSHINOWO/Desktop/apps/bmi_calculator/lib/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../components/calculate_container_button.dart';
import '../components/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.calculateBMI,
      @required this.getResult,
      @required this.interpretation});

  final String calculateBMI;
  final String getResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 5.0),
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      getResult,
                      style: kTextResultHeading,
                    ),
                    Text(
                      calculateBMI,
                      style: kBMIResult,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: CalculateButton(
                label: 'RE-CALCULATE',
                onTapButton: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
