import 'package:flutter/material.dart';

class TotalScoreProvider extends ChangeNotifier {
  int _totalScore = 0;

  int get setScore => _totalScore;

  set setScore(int value) {
    _totalScore = value;
    notifyListeners();
  }
}
