import 'package:market_place/models/item.dart';

class ItemSeeder {
  List<Item> listItems() => [
        Item(
            name: 'Shoes 1',
            price: 700000,
            image: 'imagesShopItem/shoes1.jpg',
            stock: 22,
            rating: 4),
        Item(
            name: "Shoes 2",
            price: 500000,
            image: 'imagesShopItem/shoes2.jpg',
            stock: 10,
            rating: 3),
        Item(
            name: 'Shoes 3',
            price: 900000,
            image: 'imagesShopItem/shoes3.jpg',
            stock: 20,
            rating: 4),
        Item(
            name: 'Shoes 4',
            price: 800000,
            image: 'imagesShopItem/shoes4.jpg',
            stock: 5,
            rating: 4),
        Item(
            name: 'Shoes 5',
            price: 750000,
            image: 'imagesShopItem/shoes5.jpg',
            stock: 24,
            rating: 4),
        Item(
            name: 'Shoes 6',
            price: 850000,
            image: 'imagesShopItem/shoes6.jpg',
            stock: 15,
            rating: 4),
        Item(
            name: 'Shoes 6',
            price: 850000,
            image: 'imagesShopItem/shoes6.jpg',
            stock: 15,
            rating: 4),
      ];
}
