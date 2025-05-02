class ProductModel {
  String name;
  String imageUrl;
  int discount;
  String merchant;
  double price;
  bool isFav;
  double? newPrice;
  int categoryId;

  ProductModel({
    required this.name,
    required this.imageUrl,
    required this.discount,
    required this.merchant,
    required this.price,
    required this.isFav,
    required this.categoryId,
  }) {
    if (discount > 0) {
      newPrice = price - (price * (discount /100));
    } else
    {
      newPrice = price;
    }

  }
}
