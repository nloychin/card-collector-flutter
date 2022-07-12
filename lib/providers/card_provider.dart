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
      imageUrl:
          'https://sozoclinic.sg/wp-content/uploads/laser_treatment_what_you_need_to_know.jpg',
      productCategoryName: 'Laser',
      expiryDate: '12-12-1212',
      price: 12000,
      visitAmount: 10,
    ),
    CardModel(
      id: "Botox 1",
      title: "Botox package 1",
      imageUrl:
          'https://static.india.com/wp-content/uploads/2022/01/pjimage-2022-01-04T194229.309.jpg',
      productCategoryName: 'Botox',
      expiryDate: '12-12-1212',
      price: 20000,
      visitAmount: 5,
    ),
    CardModel(
      id: "Laser 2",
      title: "Laser package 2",
      imageUrl:
          'https://firstclasse.com.my/wp-content/uploads/2019/07/Laser-treatments-featured.jpg',
      productCategoryName: 'Laser',
      expiryDate: '12-12-1212',
      price: 12000,
      visitAmount: 10,
    ),
    CardModel(
      id: "Botox 2",
      title: "Botox package 2",
      imageUrl:
          'https://consumer.healthday.com/media-library/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8yMzYzMjUzNi9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTY4ODE0ODcxN30.5qV4Ye9Q8W5NjfiTSiws7DZoBXs0cCZqWSelOFLbl_4/image.jpg',
      productCategoryName: 'Botox',
      expiryDate: '12-12-1212',
      price: 20000,
      visitAmount: 5,
    )
  ];
}
