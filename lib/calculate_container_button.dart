import 'package:flutter/material.dart';
import 'constants.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({@required this.label, @required this.onTapButton});

  final String label;
  final Function onTapButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapButton,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        color: kBottomContainerColour,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
