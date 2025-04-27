import 'package:devhub_logic_session/src/app_colors.dart';
import 'package:flutter/material.dart';

class DiscountCard extends StatelessWidget {
  DiscountCard({super.key, required this.discount});
  int discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text("$discount% off",
        style: TextStyle(
            color: Colors.white,
          fontSize: 10,
        )
        ),
      ),
    );
  }
}
