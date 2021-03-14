part of 'models.dart';

class City {
  final int? id;
  final String? name;
  final String? imageUrl;
  final bool isPopular;

  City({this.id, this.name, this.imageUrl, this.isPopular = false});
}
