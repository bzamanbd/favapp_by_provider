import 'package:favapp_by_provider/provider/item_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ItemProvider>(create: (_) => ItemProvider()),
        ],
        child: const MaterialApp(
          title: 'fav app',
          home: HomeScreen(),
        ),
      ),
    );
