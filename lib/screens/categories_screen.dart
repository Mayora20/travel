import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/category_item.dart';

// ignore: use_key_in_widget_constructors
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('دليل سياحي'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map(
          (categoryData) =>
              CategoryItem(categoryData.id,categoryData.title, categoryData.imageUrl),
        ).toList(),
      ),
    );
  }
}
