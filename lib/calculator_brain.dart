import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight, Good Job';
    } else {
      return 'You have alower than normal body weight, you can eat a bit more';
    }
  }
}