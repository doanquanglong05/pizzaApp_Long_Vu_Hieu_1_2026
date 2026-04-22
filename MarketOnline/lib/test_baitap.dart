import 'models/Product.dart';
import 'models/ListProduct.dart';

class MyGeneric<T> {
  T obj;

  MyGeneric(this.obj);

  void printData() {
    print(obj);
  }
}

void main() {
  var student = [
    {'studentID': '23010377', 'fullname': 'Doan Quang Long'},
    {'studentID': '23010534', 'fullname': 'Doan Hoang Vu'},
    {'studentID': '23010185', 'fullname': 'Pham Van Hieu'},
  ];

  var data = MyGeneric(student);
  data.printData();

  var list = ListProduct();

  list.addProduct(Product("P01", "Táo", 20000, "Trái cây"));
  list.addProduct(Product("P02", "Coca", 10000, "Nước uống"));

  print("Danh sách:");
  list.showAll();

  list.updateProduct("P01", "Táo Mỹ", 30000, "Trái cây nhập");

  print("Sau khi cập nhật:");
  list.showAll();
}