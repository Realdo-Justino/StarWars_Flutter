import 'dart:js';
import 'package:flutter/material.dart';

import 'Pages/characters.dart';
import 'Pages/home.dart';
import 'Pages/page_model.dart';
import 'Pages/spaceships.dart';
import 'Pages/planets.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context)=>page_model_class(),
    },
  ));
}

