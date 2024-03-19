import 'package:bistro_book/pages/shared_pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => login(),
      },
    ),
);