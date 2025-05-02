import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'app_colors.dart';

class AppTextStyles{
  static TextStyle font12WhiteMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle font18BlackBold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle font15GrayMedium = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: AppColor.lightGrayColor,
  );

  static TextStyle font12GreenMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColor.primaryGreenColor,
  );

  static TextStyle font12BlackMediumInline = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    decoration: TextDecoration.lineThrough,
    decorationThickness: 1.5,
  );

}

class ContainerDecorations{

  static BoxDecoration roundedCornerOrange = BoxDecoration(
    color: AppColor.secondaryColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      )
  );

  static BoxDecoration roundedCornerGreen = BoxDecoration(
      color: AppColor.primaryGreenColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      )
  );


}


class AppIcons {
  static const breadIcon = MaterialCommunityIcons.bread_slice;
  static const fruitIcon = MaterialCommunityIcons.food_apple;
  static const vegetablesIcon = MaterialCommunityIcons.leaf;
  static const milkIcon = MaterialCommunityIcons.bottle_wine;

}