class Product {
  final String image, title;
  final int id ;


  Product({
    required this.image,
    required this.title,
    required this.id,
  });
}
List<Product> products = [
  Product(
    id: 1,
    title: 'الاستعداد للحج',
    image: "assets/images/hajjready.jpeg",
  ),
  Product(
    id: 2,
    title: "مناسك للحج",
    image: "assets/images/ahkam.jpeg",
  ),
  Product(
    id: 3,
    title: "احكام الحج",
    image: "assets/images/a7kam.jpeg",
  ),
  Product(
    id: 4,
    title: "المطوف",
    image: "assets/images/photo_2022-03-14_08-43-58.jpg",
  ),
];

