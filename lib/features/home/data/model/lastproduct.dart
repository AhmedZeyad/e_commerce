// ignore_for_file: public_member_api_docs, sort_constructors_first

class LastProduct {
  String image;
  String name;
  double price;
  double? oldPrice;
  LastProduct({
    required this.image,
    required this.name,
    required this.price,
    this.oldPrice,
  });


}
