import 'package:devhub_logic_session/components/app_bar_icon_button.dart';
import 'package:devhub_logic_session/components/category_card.dart';
import 'package:devhub_logic_session/components/product_card.dart';
import 'package:devhub_logic_session/models/category_model.dart';
import 'package:devhub_logic_session/models/product_model.dart';
import 'package:devhub_logic_session/src/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../src/app_styles.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CategoryModel> categories = [
    CategoryModel(isSelected: false, icon: AppIcons.fruitIcon, name: "Fruits", id: 1),
    CategoryModel(isSelected: false, icon: AppIcons.breadIcon, name: "Breads", id: 2),
    CategoryModel(isSelected: false, icon: AppIcons.milkIcon, name: "Milk", id: 3),
    CategoryModel(
      isSelected: false,
      icon: AppIcons.vegetablesIcon,
      name: "Vegetables",
      id: 4,
    ),
  ];

  final List<ProductModel> items = [
    ProductModel(
      name: "Orange",
      imageUrl:
          "https://img.freepik.com/free-vector/watercolor-orange-background_52683-10330.jpg",
      discount: 20,
      merchant: "Souq elsabt",
      price: 2.5,
      isFav: false,
      categoryId: 1,
    ),
    ProductModel(
      name: "Apple",
      imageUrl:
          "https://img.freepik.com/free-psd/close-up-delicious-apple_23-2151868338.jpg?",
      discount: 0,
      merchant: "Souq elsabt",
      price: 80,
      isFav: false,
      categoryId: 1,
    ),
    ProductModel(
      name: "Banana",
      imageUrl:
          "https://img.freepik.com/free-photo/ai-generated-image-banana_23-2150683022.jpg",
      discount: 10,
      merchant: "Souq elsabt",
      price: 35.0,
      isFav: true,
      categoryId: 1,
    ),
    ProductModel(
      name: "Tomato",
      imageUrl:
          "https://img.freepik.com/free-psd/tomato-fruit-isolated-transparent-background_191095-15476.jpg",
      discount: 5,
      merchant: "Souq elkhames",
      price: 11.0,
      isFav: true,
      categoryId: 4,
    ),
  ];
  int selectedCategory = -1;

  double totalPrice = 0;
  
  List<ProductModel> getItems(){
    if (selectedCategory == -1) return items;
    return items.where((item) => item.categoryId == categories[selectedCategory].id).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          AppBarIconButton(color: Colors.blue, icon: Icons.share),
          AppBarIconButton(color: Colors.red, icon: Icons.favorite_border),
        ],
        title: Center(
          child: Text(
            "EDKA",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          if (selectedCategory != -1) {
                            categories[selectedCategory].isSelected = false;
                          }
                          categories[index].isSelected = true;
                          selectedCategory = index;
                          setState(() {});
                        },
                        child: CategoryCard(
                          icon: categories[index].icon,
                          isSelected: categories[index].isSelected,
                          text: categories[index].name,
                        ),
                      ),
                    ),
              ),
            ),
            Expanded(
              flex: 4,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.865,
                children:
                    getItems()
                        .map((item) => ProductCard(productModel: item,))
                        .toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Text("Total: "),
          Text("$totalPrice"),

        ],
      ),
    );
  }
}
