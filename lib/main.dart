import 'dart:js';

import 'package:bistro_book/pages/cooks_pages/cooks_add_recipe.dart';
import 'package:bistro_book/pages/cooks_pages/cooks_bookings.dart';
import 'package:bistro_book/pages/cooks_pages/cooks_home.dart';
import 'package:bistro_book/pages/cooks_pages/cooks_orders.dart';
import 'package:bistro_book/pages/cooks_pages/cooks_recipes.dart';
import 'package:bistro_book/pages/cooks_pages/cooks_show_recipe.dart';
import 'package:bistro_book/pages/owners_pages/owners_change_menu.dart';
import 'package:bistro_book/pages/owners_pages/owners_home.dart';
import 'package:bistro_book/pages/owners_pages/owners_monthly_summary.dart';
import 'package:bistro_book/pages/owners_pages/owners_schedule.dart';
import 'package:bistro_book/pages/shared_pages/add_storage_raport.dart';
import 'package:bistro_book/pages/shared_pages/login.dart';
import 'package:bistro_book/pages/shared_pages/menu.dart';
import 'package:bistro_book/pages/shared_pages/schedule.dart';
import 'package:bistro_book/pages/shared_pages/shifts.dart';
import 'package:bistro_book/pages/shared_pages/show_storage_raport.dart';
import 'package:bistro_book/pages/shared_pages/storage_raports.dart';
import 'package:bistro_book/pages/waiters_pages/waiters_bookings.dart';
import 'package:bistro_book/pages/waiters_pages/waiters_home.dart';
import 'package:bistro_book/pages/waiters_pages/waiters_orders.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => login(),
        '/waiters_home': (context) => waiters_home(),
        '/cooks_home': (context) => cooks_home(),
        '/owners_home': (context) => owners_home(),
        '/waiters_bookings': (context) => waiters_bookings(),
        '/waiters_orders': (context) => waiters_orders(),
        '/cooks_add_recipe': (context) => cooks_add_recipe(),
        '/cooks_orders': (context) => cooks_orders(),
        '/cooks_recipes': (context) => cooks_recipes(),
        '/cooks_show_recipe': (context) => cooks_show_recipe(),
        '/cooks_bookings': (context) => cooks_bookings(),
        '/owners_change_menu': (context) => owners_change_menu(),
        '/owners_monthly_summary': (context) => owners_monthly_summary(),
        '/owners_schedule': (context) => owners_schedule(),
        '/add_storage_raport': (context) => add_storage_raport(),
        '/menu': (context) => menu(),
        '/schedule': (context) => schedule(),
        '/shifts': (context) => shifts(),
        '/show_storage_raport': (context) => show_storage_raport(),
        '/storage_raports': (context) => storage_raports(),
      },
    ),
);