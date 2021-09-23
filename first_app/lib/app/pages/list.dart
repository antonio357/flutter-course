import 'package:flutter/material.dart';

import 'package:first_app/app/routes.dart';


class List extends StatelessWidget {
  final contacts = [
    {'name': 'man 1', 'number': '(11) 9 1234-5678', 'image': 'https://media.istockphoto.com/vectors/portrait-face-manga-anime-male-red-hair-eyes-expression-vector-id844139746?s=612x612'},
    {'name': 'woman 1', 'number': '(11) 9 1234-5678', 'image': 'https://media.istockphoto.com/vectors/anime-schoolgirl-cartoon-character-in-japanese-classical-style-manga-vector-id844012000?s=612x612'},
    {'name': 'woman 2', 'number': '(11) 9 1234-5678', 'image': 'https://media.istockphoto.com/photos/digital-3d-illustration-of-a-toon-girl-picture-id942739646?s=612x612'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(context).pushNamed(Routes.ADD_FORM)
          )
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index){
          var contact = contacts[index];
          var image = CircleAvatar(backgroundImage: NetworkImage(contact['image']));
          return ListTile(
            leading: image,
            title: Text(contact['name']),
            subtitle: Text(contact['number']),
          );
        },
      ),
    );
  }
}