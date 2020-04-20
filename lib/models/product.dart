class Product {
  final String name, price, image, topShot;
  final List<String> features;
  final List<Map<String, dynamic>> productSpecification;
  Product({
    this.topShot,
    this.productSpecification,
    this.name,
    this.price,
    this.image,
    this.features,
  });
}