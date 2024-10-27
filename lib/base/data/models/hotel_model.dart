class HotelModel {
  String? image;
  String? place;
  String? destination;
  int? price;
  String? description;
  List<String>? images;

  HotelModel(
      {this.image,
      this.place,
      this.destination,
      this.price,
      this.description,
      this.images});

  HotelModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    place = json['place'];
    destination = json['destination'];
    price = json['price'];
    description = json['description'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['place'] = place;
    data['destination'] = destination;
    data['price'] = price;
    data['description'] = description;
    data['images'] = images;
    return data;
  }
}
