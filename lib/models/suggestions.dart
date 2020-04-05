import './mobile.dart';

class Suggestion {
  final String name;
  final String imageUrl;

  Suggestion(this.name, this.imageUrl);
}

List<Suggestion> suggestions = [
  Suggestion(mobiles[0].name, mobiles[0].imageUrl),
  Suggestion(mobiles[2].name, mobiles[2].imageUrl),
  Suggestion('Dell Inspiron 3000', 'assets/images/laptop1.jpg'),
  Suggestion('Asus Zenpro Max 2', 'assets/images/laptop2.jpg'),
  Suggestion('HP Omen', 'assets/images/laptop3.jpg'),
  Suggestion('Macbook Pro', 'assets/images/laptop4.jpg'),
];
