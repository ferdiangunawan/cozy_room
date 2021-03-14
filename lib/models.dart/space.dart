class Space {
  int? id;
  String? name;
  String? imageUrl;
  int? price;
  String? city;
  String? country;
  int? rating;
  String? mapUrl;
  String? address;
  String? phone;
  List? photos;
  int? numberOfKitchen;
  int? numberOfBedroom;
  int? numberOfCupboard;
  Space({
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.city,
    this.country,
    this.rating,
    this.mapUrl,
    this.address,
    this.phone,
    this.photos,
    this.numberOfKitchen,
    this.numberOfBedroom,
    this.numberOfCupboard,
  });

  factory Space.fromJson(Map<String, dynamic>json) {
    return Space(
      id: json['id'],
      name: json['name'],
      imageUrl: json['image_url'],
      price: json['price'],
      city: json['city'],
      country: json['country'],
      rating: json['rating'],
      mapUrl : json['map_url'],
      address: json['address'],
      phone: json['phone'],
      photos: json['photos'] as List,
      numberOfKitchen: json['number_of_kitchens'],
      numberOfBedroom: json['number_of_bedrooms'],
      numberOfCupboard: json['number_of_cupboards'],
    );
  }
}