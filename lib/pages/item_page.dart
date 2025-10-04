import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Ambil data yang dikirim dari HomePage
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nama: ${item.name}", style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 12),
            Text("Harga: Rp ${item.price}", style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
