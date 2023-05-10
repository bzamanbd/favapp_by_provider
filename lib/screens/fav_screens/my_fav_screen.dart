import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/item_provider.dart';

class MyFavScreen extends StatelessWidget {
  const MyFavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Fav Items'),
        centerTitle: true,
      ),
      body: Consumer<ItemProvider>(builder: (_, data, child) {
        return ListView.builder(
            itemCount: data.selectedItems.length,
            itemBuilder: (_, index) {
              //we need to create new itemList accroding to new index of selectedItems//
              final newIndex = data.selectedItems[index];
              return ListTile(
                leading: Text("data $index"),
                trailing: TextButton(
                  onPressed: () => data.removeFromFav(newIndex),
                  child: const Text('remove'),
                ),
              );
            });
      }),
    );
  }
}
