class BigApe {
  String name;
  String imgUrl;
  List<String> locations;

  BigApe(this.name, this.imgUrl, this.locations);

  static List<BigApe> samples = [
    BigApe(
      'Chimpanzee',
      'assets/images/chimpanzee.jpg',
      [
        'Ivory Coast', 'Guinea', 'Liberia', 'Mali', 'Sierra Leone',
        'Guinea-Bissau', 'Senegal', 'Ghana'
      ]
    ),
    BigApe(
      'Bonobo',
      'assets/images/bonobo.jpg',
      [
        'Democratic Republic of Congo'
      ]
    ),
    BigApe(
      'Orangutan',
      'assets/images/orangutan.jpg',
      [
        'Borneo', 'Sumatra',
      ]
    ),
    BigApe(
      'Eastern Gorilla',
      'assets/images/eastern-gorilla.jpg',
      [
        'Democratic Republic of Congo', 'Rwanda', 'Uganda'
      ]
    ),
    BigApe(
      'Western Gorilla',
      'assets/images/western-gorilla.jpg',
      [
        'Cameroon', 'Central African Republic',
        'Democratic Republic of Congo', 'Equatorial Guinea', 'Gabon',
        'Republic of Congo'
      ]
    ),
    BigApe(
      'Human',
      'assets/images/human.jpg',
      [
        'Everywhere'
      ]
    )
  ];
}