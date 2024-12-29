import 'package:class_assignment_2/bloc/area_of_circle_bloc.dart';
import 'package:class_assignment_2/bloc/simple_interest_bloc.dart';
import 'package:class_assignment_2/bloc/student_list_bloc.dart';
import 'package:class_assignment_2/dashboard_bloc.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  //async vneko highway xa sab ekaixoti paralley jana pauxa
  _initBloc();
}

// Lazy Singleton to use when service is to be located only when required
// Factory to use when

void _initBloc() {
  serviceLocator.registerLazySingleton(() => AreaOfCircleBloc());
  serviceLocator.registerLazySingleton(() => SimpleInterestBloc());
  serviceLocator.registerLazySingleton(() => StudentListBloc());

  serviceLocator.registerLazySingleton<DashboardBloc>(
    () => DashboardBloc(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );
}
