import 'package:class_assignment_2/bloc/area_of_circle_bloc.dart';
import 'package:class_assignment_2/bloc/simple_interest_bloc.dart';
import 'package:class_assignment_2/bloc/student_list_bloc.dart';
import 'package:class_assignment_2/view/area_of_circle_bloc_view.dart';
import 'package:class_assignment_2/view/simple_interest_bloc_view.dart';
import 'package:class_assignment_2/view/student_list_bloc_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Cubit<void> {
  DashboardBloc(
    this._areaOfCircleBloc,
    this._simpleInterestBloc,
    this._studentListBloc,
  ) : super(null);

  final AreaOfCircleBloc _areaOfCircleBloc;
  final SimpleInterestBloc _simpleInterestBloc;
  final StudentListBloc _studentListBloc;

  void openAreaOfCircle(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _areaOfCircleBloc,
                child: const AreaOfCircleBlocView(),
              )),
    );
  }

  void openSimpleInterest(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => BlocProvider.value(
                value: _simpleInterestBloc,
                child: const SimpleInterestBlocView(),
              )),
    );
  }

  void openStudentList(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _studentListBloc,
                  child: const StudentListBlocView(),
                )));
  }
}
