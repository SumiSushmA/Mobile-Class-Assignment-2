import 'package:class_assignment_2/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBlocView extends StatelessWidget {
  const DashboardBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardBloc>().openAreaOfCircle(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.pie_chart, size: 50),
                  Text('Area of Circle'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardBloc>().openSimpleInterest(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.interests, size: 50),
                  Text('Simple Interest'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardBloc>().openStudentList(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.list, size: 50),
                  Text('Student List'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
