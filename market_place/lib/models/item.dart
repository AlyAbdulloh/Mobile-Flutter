class Item {
  String name, image;
  int price, stock;
  double rating;

  Item({
    required this.name,
    required this.price,
    required this.image,
    required this.stock,
    required this.rating,
  });

  set setStock(int value) {
    stock = value;
  }
}
