import 'package:flutter/material.dart';

import 'package:first_app/app/routes.dart';


class AddForm extends StatefulWidget {
  const AddForm({ Key? key }) : super(key: key);

  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  int _typeCounter = 0;

  void _count() => setState(() => _typeCounter++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add a new a contact')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have typed $_typeCounter times\n\n'),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'type in here',
            ),
            onChanged: (str) => _count(),
          )
        ]
      ),
    );
  }
}