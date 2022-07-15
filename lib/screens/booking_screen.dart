import 'package:card_collector/wigets/calendar_wiget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/card_model.dart';
import '../providers/card_provider.dart';
import '../services/utils.dart';
import '../wigets/cards_wiget.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    final cardsProviders = Provider.of<CardsProvider>(context);
    List<CardModel> allCards = cardsProviders.getCards;
    final Utils utils = Utils(context);
    final Size size = utils.getScreenSize;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Column(
          children: <Widget>[
            const CalendarWidget(),
            SizedBox(
              height: size.height * 0.03,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: allCards.length,
                itemBuilder: (ctx, index) {
                  return SizedBox(
                    height: 50,
                    child: CardsWiget(
                      id: allCards[index].id,
                      title: allCards[index].title,
                      imageUrl: allCards[index].imageUrl,
                      productCategoryName: allCards[index].productCategoryName,
                      expiryDate: allCards[index].expiryDate,
                      price: allCards[index].price,
                      visitAmount: allCards[index].visitAmount,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
