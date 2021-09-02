import 'dart:math';



class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _BMI; // private datatype --- use _

  String CalculateBMI() {
    _BMI = weight / pow(height / 100, 2);
    return _BMI.toStringAsFixed(1); // give string with 1 decimal number
  }

  String getResult() {
    if (_BMI >= 25) {
      return 'Overweight';
    } else if (_BMI > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiResultInterpreation() {
    if (_BMI >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_BMI >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
