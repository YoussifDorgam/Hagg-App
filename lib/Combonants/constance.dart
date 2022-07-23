import 'package:flutter/material.dart';

void navigatorTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => widget),
);