import 'package:flutter/material.dart';

import 'pages/list.dart';
import 'pages/addForm.dart';
import 'package:first_app/app/routes.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(primarySwatch: Colors.indigo),

      routes: {
        Routes.LIST: (context) => List(),
        Routes.ADD_FORM: (context) => AddForm()
      }
    );
  }
}