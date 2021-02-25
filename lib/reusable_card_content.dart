import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCardLabel extends StatelessWidget {
  ReusableCardLabel({@required this.cardIcon, @required this.cardTextLabel});

  final IconData cardIcon;
  final String cardTextLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardTextLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
