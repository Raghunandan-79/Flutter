class IcecreamData {
  List<Icecream> icecreams;

  IcecreamData({required this.icecreams});

  factory IcecreamData.fromJson(Map<String, dynamic> json) {
    return IcecreamData(
      icecreams: (json['icecreams'] as List)
          .map((e) => Icecream.fromJson(e))
          .toList(),
    );
  }
}

class Icecream {
  String flavor;
  String description;
  List<String> toppings;
  double price;
  String image;
  List<Ingredient> ingredients;

  Icecream({
    required this.flavor,
    required this.description,
    required this.toppings,
    required this.price,
    required this.image,
    required this.ingredients,
  });

  factory Icecream.fromJson(Map<String, dynamic> json) {
    return Icecream(
      flavor: json['flavor'],
      description: json['description'],
      toppings: List<String>.from(json['toppings']),
      price: (json['price'] as num).toDouble(),
      image: json['image'],
      ingredients: (json['ingredients'] as List)
          .map((e) => Ingredient.fromJson(e))
          .toList(),
    );
  }
}

class Ingredient {
  String name;
  String quantity;

  Ingredient({required this.name, required this.quantity});

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      name: json['name'],
      quantity: json['quantity'],
    );
  }
}
