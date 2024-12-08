class MarketplaceModel {
  final String title;
  final String photo;
  final double price;

  MarketplaceModel({
   required this.title,
   required this.photo,
   required this.price,
});
}

List<MarketplaceModel> marketplaceData = [
  MarketplaceModel(
      title: "car 2 months old",
      photo: "images/product/car3.jpg",
      price: 20000,
  ),

  MarketplaceModel(
    title: "bike 3 months old",
    photo: "images/product/bike1.jpg",
    price: 50000,
  ),

  MarketplaceModel(
    title: "phone 11 months old",
    photo: "images/product/phone1.jpg",
    price: 8000,
  ),

  MarketplaceModel(
    title: "laptop 2 months old",
    photo: "images/product/laptop1.jpg",
    price: 55000,
  ),

  MarketplaceModel(
    title: "Bike 2 months old",
    photo: "images/product/car1.jpg",
    price: 150000,
  ),

  MarketplaceModel(
    title: "car 20 months old",
    photo: "images/product/car2.jpg",
    price: 100000,
  ),

  MarketplaceModel(
    title: "car 12 months old",
    photo: "images/product/car3.jpg",
    price: 210000,
  ),
];