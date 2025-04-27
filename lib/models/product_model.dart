class ProductModel {
  String name;
  String imageUrl;
  int discount;
  String merchant;
  double price;
  bool isFav;

  ProductModel({
    required this.name,
    required this.imageUrl,
    required this.discount,
    required this.merchant,
    required this.price,
    required this.isFav,
  });
}
