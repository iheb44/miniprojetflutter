import 'package:flutter/material.dart';
import 'package:gstock/login.dart';
import 'package:gstock/root_generator.dart';
import 'insertct.dart';
import 'singup.dart';
import 'logged.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    ),
  );
}
