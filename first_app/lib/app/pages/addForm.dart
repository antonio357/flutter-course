import 'package:flutter/material.dart';

import 'package:first_app/app/routes.dart';


class AddForm extends StatefulWidget {
  const AddForm({ Key? key }) : super(key: key);

  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {

  final textController = TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    textController.addListener(getTextLenght);
  }

  int _textLenght = 0;
  void getTextLenght() => setState(() => _textLenght = textController.text.length);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add a new a contact')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Your text has $_textLenght characters\n\n'),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'type in here',
            ),
            controller: textController,
          )
        ]
      ),
    );
  }
}