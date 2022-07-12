import 'package:flutter/cupertino.dart';

import '../models/card_model.dart';

class CardsProvider with ChangeNotifier {
  List<CardModel> get getCards {
    return _cardsList;
  }

  static final List<CardModel> _cardsList = [
    CardModel(
      id: "Laser 1",
      title: "Laser package 1",
      imageUrl: 'assets/images/products/Laser1.jpeg',
      productCategoryName: 'Laser',
      expiryDate: '12-12-1212',
      price: 12000,
      visitAmount: 10,
    ),
    CardModel(
      id: "Botox 1",
      title: "Botox package 1",
      imageUrl: 'assets/images/products/Botox1.jpeg',
      productCategoryName: 'Botox',
      expiryDate: '12-12-1212',
      price: 20000,
      visitAmount: 5,
    ),
    CardModel(
      id: "Treatment 1",
      title: "Treatment package 1",
      imageUrl: 'assets/images/products/Treatment1.jpeg',
      productCategoryName: 'Treatment',
      expiryDate: '12-12-1212',
      price: 20000,
      visitAmount: 5,
    ),
    CardModel(
      id: "Filler 1",
      title: "Filler package 1",
      imageUrl: 'assets/images/products/filler1.jpeg',
      productCategoryName: 'Filler',
      expiryDate: '12-12-1212',
      price: 20000,
      visitAmount: 5,
    ),
    CardModel(
      id: "Laser 2",
      title: "Laser package 2",
      imageUrl: 'assets/images/products/Laser2.jpeg',
      productCategoryName: 'Laser',
      expiryDate: '12-12-1212',
      price: 12000,
      visitAmount: 10,
    ),
    CardModel(
      id: "Botox 2",
      title: "Botox package 2",
      imageUrl: "assets/images/products/Botox2.jpeg",
      productCategoryName: 'Botox',
      expiryDate: '12-12-1212',
      price: 20000,
      visitAmount: 5,
    ),
    CardModel(
      id: "Treatment 2",
      title: "Treatment package 2",
      imageUrl: 'assets/images/products/Treatment2.jpeg',
      productCategoryName: 'Treatment',
      expiryDate: '12-12-1212',
      price: 20000,
      visitAmount: 5,
    ),
  ];
}
