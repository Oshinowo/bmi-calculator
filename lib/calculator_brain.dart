import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return "Your BMI result is high, you should eat less";
    } else if (_bmi > 18.5) {
      return "Your BMI result is normal, you are healthy";
    } else {
      return "Your BMI result is quite low, you should eat more";
    }
  }
}
