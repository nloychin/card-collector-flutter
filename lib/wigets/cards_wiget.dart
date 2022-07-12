import 'package:flutter/material.dart';
import '../services/utils.dart';

class CardsWiget extends StatefulWidget {
  const CardsWiget(
      {Key? key,
      required this.id,
      required this.title,
      required this.imageUrl,
      required this.productCategoryName,
      required this.expiryDate,
      required this.price,
      required this.visitAmount})
      : super(key: key);
  final String id, title, imageUrl, productCategoryName, expiryDate;
  final double price;
  final int visitAmount;

  @override
  State<CardsWiget> createState() => _CardsWigetState();
}

class _CardsWigetState extends State<CardsWiget> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
          ]),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.id,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.title,
                      style: const TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "฿ ${widget.price}",
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "available visits: ${widget.visitAmount.toString()}/${widget.visitAmount.toString()}",
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      "Expiry date: ${widget.expiryDate}",
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Image.asset(
                  widget.imageUrl,
                  height: size.width * 0.30,
                  width: size.width * 0.40,
                )
              ])),
    );
  }
}
