import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // contoh data
    final List<Item> items = [
      Item(name: "Laptop", price: 12000000),
      Item(name: "Handphone", price: 5000000),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text("Rp ${item.price}"),
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
          );
        },
      ),
    );
  }
}
