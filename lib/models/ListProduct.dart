import 'Product.dart';

class ListProduct {
  List<Product> products = [];

  void addProduct(Product p) {
    products.add(p);
  }

  void showAll() {
    for (var p in products) {
      p.display();
    }
  }

  void updateProduct(String id, String newName, double newPrice, String newCategory) {
    for (var p in products) {
      if (p.id == id) {
        p.update(newName, newPrice, newCategory);
        return;
      }
    }
    print("Không tìm thấy sản phẩm!");
  }
}