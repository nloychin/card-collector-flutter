class CardModel {
  final String id, title, imageUrl, productCategoryName, expiryDate;
  final double price;
  final int visitAmount;

  CardModel(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.productCategoryName,
      required this.expiryDate,
      required this.price,
      required this.visitAmount});
}
