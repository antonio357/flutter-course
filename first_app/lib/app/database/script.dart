
void main() {
  final createTable = '''
    CREATE TABLE contact(
      id INT NOT NULL PRIMARY KEY,
      name VARCHAR(200) NOT NULL,
      number CHAR(16) NOT NULL,
      image VARCHAR(300) NOT NULL,
      email VARCHAR(150) NOT NULL,
    )
  ''';

  final contacts = [
    {'name': 'man 1', 'number': '(11) 9 1234-5678', 'image': 'https://media.istockphoto.com/vectors/portrait-face-manga-anime-male-red-hair-eyes-expression-vector-id844139746?s=612x612', 'email': 'man1@email.com'},
    {'name': 'woman 1', 'number': '(11) 9 1234-5678', 'image': 'https://media.istockphoto.com/vectors/anime-schoolgirl-cartoon-character-in-japanese-classical-style-manga-vector-id844012000?s=612x612', 'email': 'woman1@email.com'},
    {'name': 'woman 2', 'number': '(11) 9 1234-5678', 'image': 'https://media.istockphoto.com/photos/digital-3d-illustration-of-a-toon-girl-picture-id942739646?s=612x612', 'email': 'woman2@email.com'}
  ];

  var inserts = [];

  contacts.forEach((var contact) => {
    inserts.add('''
      INSERT INTO contact(name, number, image, email)
      VALUES ('${contact['name']}', '${contact['number']}', '${contact['image']}', '${contact['email']}')
      ''')
  });

  inserts.forEach((element) => {print(element)});
} 