import 'package:xan_dart_package_1/models/customer.dart';
import 'package:riverpod/riverpod.dart';

class CustomerService {
  final Ref container;
  final List<Customer> _customers = [];
  CustomerService(this.container);

  void addCustomer(String name, String email) {
    final newCustomer = Customer(name, email);
    _customers.add(newCustomer);
    print('$name (Email : $email) has been added.');
  }

  void viewCustomers() {
    if (_customers.isEmpty) {
      print('No customers available.');
    } else {
      print('Customers:');
      for (var customer in _customers) {
        print(customer);
      }
    }
  }
  List<Customer> get customer => _customers;
}
