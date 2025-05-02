import 'package:flutter/cupertino.dart';

class CategoryModel {
  bool isSelected;
  IconData icon;
  String name;
  int id;

  CategoryModel({
    required this.isSelected,
    required this.icon,
    required this.name,
    required this.id,
  });
}
