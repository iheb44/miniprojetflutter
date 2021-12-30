import 'package:flutter/material.dart';
import 'package:gstock/logged.dart';
import 'package:gstock/login.dart';
import 'package:gstock/singup.dart';

import 'addorder.dart';
import 'insertc.dart';
import 'insertct.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => login());
      case '/singup':
        return MaterialPageRoute(
          builder: (_) => singup(),
        );
      case '/logged':
        return MaterialPageRoute(
          builder: (_) => loged(),
        );
      case '/componentsType':
        return MaterialPageRoute(
          builder: (_) => insertct(),
        );
      case '/components':
        return MaterialPageRoute(
          builder: (_) => insertc(),
        );
      case '/order':
        return MaterialPageRoute(
          builder: (_) => addorder(),
        );
      // If args is not of the correct type, return an error page.
      // You can also throw an exception while in development.
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
