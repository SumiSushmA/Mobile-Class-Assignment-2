// part of 'simple_interest_bloc.dart';

// @immutable
// sealed class SimpleInterestEvent {}

import 'package:flutter/material.dart';

@immutable
sealed class SimpleInterestEvent {}

class CalculateSimpleInterestEvent extends SimpleInterestEvent {
  final double principal;
  final double rate;
  final double time;

  CalculateSimpleInterestEvent({
    required this.principal,
    required this.rate,
    required this.time,
  });
}
