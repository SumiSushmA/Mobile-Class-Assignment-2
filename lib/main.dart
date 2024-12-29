import 'package:class_assignment_2/app.dart';
import 'package:class_assignment_2/serviceLocator/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // suru mai ekxoti initalize garxau
  await initDependencies();
  runApp(
    App(),
  );
}
