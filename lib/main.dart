import 'dart:js';

import 'package:bistro_book/pages/cooks_pages/cooks_home.dart';
import 'package:bistro_book/pages/owners_pages/owners_home.dart';
import 'package:bistro_book/pages/shared_pages/login.dart';
import 'package:bistro_book/pages/waiters_pages/waiters_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => login(),
        '/waiters_home': (context) => waiters_home(),
        '/cooks_home': (context) => cooks_home(),
        '/owners_home': (context) => owners_home(),
      },
    ),
);