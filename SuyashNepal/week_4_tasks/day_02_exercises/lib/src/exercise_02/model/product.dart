class Product {
  // {
  //   "name": "Bottled Tuesday Afternoon",
  //   "description": "A glass bottle containing the exact feeling of a Tuesday afternoon in 1987. Slightly melancholic, smells of old carpet and distant lawnmowers.",
  //   "price": 14.99,
  //   "category": "Emotions"
  // },

  final String name;
  final String description;
  final String category;
  final double price;

  const Product({
    required this.name,
    required this.price,
    required this.category,
    required this.description,
  });

  Product.fromJson(Map<String, dynamic> map)
    : name = map["name"],
      category = map["category"],
      description = map["description"],
      price = map["price"];
}
