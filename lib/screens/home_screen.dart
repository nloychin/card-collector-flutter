import 'package:card_collector/services/utils.dart';
import 'package:card_collector/wigets/cards_wiget.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../consts/const.dart';
import '../models/card_model.dart';
import '../providers/card_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  double topContainer = 0;
  bool closeTopContainer = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 30;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    final Size size = utils.getScreenSize;
    final double categoryHeight = size.height * 0.30;
    final cardsProviders = Provider.of<CardsProvider>(context);
    List<CardModel> allCards = cardsProviders.getCards;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SizedBox(
          height: size.height,
          child: Column(
            children: <Widget>[
              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: closeTopContainer ? 0 : 1,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: size.width,
                  alignment: Alignment.topCenter,
                  height: closeTopContainer ? 0 : categoryHeight,
                  child: SizedBox(
                    height: size.height * 0.3,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(
                          Consts.offerImages[index],
                          fit: BoxFit.fill,
                        );
                      },
                      autoplay: true,
                      itemCount: Consts.offerImages.length,
                      pagination: SwiperPagination(
                          alignment: Alignment.bottomCenter,
                          builder: DotSwiperPaginationBuilder(
                              color: Colors.white,
                              activeColor: Colors.blue.shade100)),
                      // control: const SwiperControl(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Expanded(
                  child: ListView.builder(
                      controller: controller,
                      itemCount: allCards.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Align(
                          heightFactor: 0.87,
                          alignment: Alignment.topCenter,
                          child: CardsWiget(
                            id: allCards[index].id,
                            title: allCards[index].title,
                            imageUrl: allCards[index].imageUrl,
                            productCategoryName:
                                allCards[index].productCategoryName,
                            expiryDate: allCards[index].expiryDate,
                            price: allCards[index].price,
                            visitAmount: allCards[index].visitAmount,
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
