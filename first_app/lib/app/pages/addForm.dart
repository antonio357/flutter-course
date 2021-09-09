import 'package:flutter/material.dart';

import 'package:first_app/app/routes.dart';


class AddForm extends StatelessWidget {
  const AddForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add a new a contact')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have typed times\n\n'),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'type in here',
            ),
          )
        ]
      ),
    );
  }
}