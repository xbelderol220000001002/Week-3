class Product {
  String name;
  double price;

  Product(this.name, this.price);

@override
  String toString() {
    //returt '$name (\$$price)
    return "$name($price)";
  }
}