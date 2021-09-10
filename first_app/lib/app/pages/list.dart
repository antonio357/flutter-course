import 'package:flutter/material.dart';

import 'package:first_app/app/routes.dart';


class List extends StatelessWidget {
  const List({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(context).pushNamed(Routes.ADD_FORM)
          )
        ],
      ),
      body: ListView(),
    );
  }
}