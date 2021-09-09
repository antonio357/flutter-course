import 'package:flutter/material.dart';

import 'package:first_app/app/routes.dart';


class AddForm extends StatelessWidget {
  const AddForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add a new a contact'))
    );
  }
}