import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../widgets/categorie_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: dummyCategories.map((catData) {
        return CategoryItem(
          title: catData.title,
          color: catData.color,
          id: catData.id,
        );
      }).toList(),
    );
  }
}
