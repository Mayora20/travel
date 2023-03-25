// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CategoryTripScreen extends StatelessWidget {
  static const screenRoute = '/category-trips';
  //final String categoryId;
  //final String categoryTitle;
// ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  //CategoryTripScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    // ignore: unused_local_variable
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('قائمة برحلات هذا التصنيف'),
      ),
    );
  }
}
