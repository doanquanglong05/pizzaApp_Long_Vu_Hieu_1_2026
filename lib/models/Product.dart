class Product {
  String id;
  String name;
  double price;
  String category;

  Product(this.id, this.name, this.price, this.category);

  void display() {
    print("ID: $id - Name: $name - Price: $price - Category: $category");
  }

  void update(String newName, double newPrice, String newCategory) {
    name = newName;
    price = newPrice;
    category = newCategory;
  }
}