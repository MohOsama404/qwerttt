import 'package:flutter/material.dart';

class Product {
  final String name;
  final String company;

  Product({required this.name, required this.company});
}

class ProductDetailsPage extends StatefulWidget {
  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  List<Product> products = [
    Product(name: 'Product 1', company: 'SOFTWARE'),
    Product(name: 'Product 2', company: 'NETWORK'),
    Product(name: 'Product 3', company: 'ERBSYSTEM'),
    Product(name: 'Product 4', company: 'SUPPLISE'),
    Product(name: 'Product 5', company: 'SECURITY'),
    // Add more products here...
  ];

  String selectedCompany = 'all';

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProducts = selectedCompany == 'all'
        ? products
        : products
            .where((product) => product.company == selectedCompany)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: DropdownButtonFormField<String>(
                      value: selectedCompany,
                      onChanged: (value) {
                        setState(() {
                          selectedCompany = value!;
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          value: 'all',
                          child: Text('All'),
                        ),
                        DropdownMenuItem(
                          value: 'SOFTWARE',
                          child: Text('SOFTWARE'),
                        ),
                        DropdownMenuItem(
                          value: 'NETWORK',
                          child: Text('NETWORK'),
                        ),
                        DropdownMenuItem(
                          value: 'ERBSYSTEM',
                          child: Text('ERBSYSTEM'),
                        ),
                        DropdownMenuItem(
                          value: 'SUPPLISE',
                          child: Text('SUPPLISE'),
                        ),
                        DropdownMenuItem(
                          value: 'SECURITY',
                          child: Text('SECURITY'),
                        ),
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  elevation: 4.0,
                  child: ListTile(
                    title: Text(
                      filteredProducts[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(filteredProducts[index].company),
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(
                        filteredProducts[index].name[0],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      // Handle tap on product
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


