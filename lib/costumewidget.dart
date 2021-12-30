import 'package:flutter/material.dart';
import 'package:gstock/singup.dart';

class costumewidget {
  Widget sta(String name, String err, var update) {
    return TextFormField(
      decoration: InputDecoration(labelText: name),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return err;
        }
        return null;
      },
      onSaved: (value) {},
    );
  }
}
