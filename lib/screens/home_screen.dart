import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/item_provider.dart';
import 'fav_screens/my_fav_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products List'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(context,
                CupertinoPageRoute(builder: (_) => const MyFavScreen())),
            icon: const Icon(Icons.favorite),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (_, index) => Consumer<ItemProvider>(
                builder: (_, data, chiild) => ListTile(
                  leading: Text("data $index"),
                  trailing: data.selectedItems.contains(index)
                      ? const Icon(Icons.favorite)
                      : const Icon(Icons.favorite_outline),
                  onTap: () => data.selectedItems.contains(index)
                      ? data.removeFromFav(index)
                      : data.addToFav(index),
                ),
              )),
    );
  }
}
