import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_poc/features/bloc/rive_bloc.dart';
import 'package:health_poc/features/view/health.dart';

class HealthPOCApp extends StatelessWidget {
  const HealthPOCApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health POC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => RiveBloc(),
        child: const HealthPage(),
      ),
    );
  }
}
