import 'package:devhub_logic_session/src/app_colors.dart';
import 'package:devhub_logic_session/src/app_styles.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.text,
  });
  final bool isSelected;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: isSelected ? AppColor.primaryGreenColor : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon,color: AppColor.lightGrayColor,),
        ),
        Text(text, style: AppTextStyles.font15GrayMedium,),
      ],
    );
  }
}
