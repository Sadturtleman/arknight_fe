import 'dart:convert';
import 'package:arknight_fe/data/module/operator_cost_calculator.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 계산기 인스턴스를 제공하는 Provider
final resourceCalculatorProvider = FutureProvider<ArknightsResourceCalculator>((ref) async {
  final String response = await rootBundle.loadString('assets/cost/operator_cost.json');
  final data = await json.decode(response);
  return ArknightsResourceCalculator(data);
});