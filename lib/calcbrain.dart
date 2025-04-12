import 'dart:math';

class Calcbrain {
  Calcbrain({required this.height, required this.weight}){
    _bmi = weight/pow(height/100, 2);
  }

  final int height;
  final int weight;

  late double _bmi;
  
  String getBMI(){
    return _bmi.toStringAsFixed(2);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Overweight. Try to stay active and eat balanced meals.';
    } else if (_bmi > 18.5) {
      return 'Normal. Keep up the good work!';
    } else {
      return 'Underweight. Consider a nutrient-rich diet and consult a doctor if needed.';
    }
  }
}