// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// part 'simple_interest_event.dart';

// class SimpleInterestBloc extends Bloc<SimpleInterestEvent, int> {
//   SimpleInterestBloc() : super(0) {
//     on<SimpleInterestEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

import 'package:bloc/bloc.dart';

import 'simple_interest_event.dart';

class SimpleInterestBloc extends Bloc<SimpleInterestEvent, double> {
  SimpleInterestBloc() : super(0.0) {
    on<CalculateSimpleInterestEvent>((event, emit) {
      double interest = (event.principal * event.rate * event.time) / 100;
      emit(interest);
    });
  }
}
