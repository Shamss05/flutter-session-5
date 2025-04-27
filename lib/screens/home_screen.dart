import 'package:devhub_logic_session/components/app_bar_icon_button.dart';
import 'package:devhub_logic_session/components/product_card.dart';
import 'package:devhub_logic_session/models/product_model.dart';
import 'package:devhub_logic_session/src/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<ProductModel> items = [
    ProductModel(
        name: "Orange",
        imageUrl: "https://img.freepik.com/free-vector/watercolor-orange-background_52683-10330.jpg",
        discount: 20,
        merchant: "Souq elsabt",
        price: 2.5,
        isFav: false),
    ProductModel(
        name: "Apple",
        imageUrl: "https://img.freepik.com/free-vector/watercolor-orange-background_52683-10330.jpg",
        discount: 0,
        merchant: "Souq elsabt",
        price: 80,
        isFav: false),
    ProductModel(
        name: "Banana",
        imageUrl: "https://img.freepik.com/free-vector/watercolor-orange-background_52683-10330.jpg",
        discount: 10,
        merchant: "Souq elsabt",
        price: 35.0,
        isFav: true),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightGrayColor,
      appBar: AppBar(
        leading: Icon(
         Icons.menu
        ),
        actions: [
          AppBarIconButton(color: Colors.blue, icon: Icons.share),
          AppBarIconButton(color: Colors.red, icon: Icons.favorite_border),
        ],
        title: Center(
          child: Text("EDKA",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.8,
            children: items.map((item) => ProductCard(productModel: item)).toList()
        ),
      ),
    );
  }
}
