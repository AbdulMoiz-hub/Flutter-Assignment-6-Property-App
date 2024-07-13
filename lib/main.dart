import 'package:flutter/material.dart';
import 'package:flutter_assignment_6_property_app/constants/theme_data.dart';
import 'package:flutter_assignment_6_property_app/routes/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeBuilder.buildTheme(context, Brightness.light),
      onGenerateRoute: RoutesGenerator.onGenerateRoute,
    );
  }
}
