import 'package:devhub_logic_session/components/disocunt_card.dart';
import 'package:devhub_logic_session/src/app_colors.dart';
import 'package:devhub_logic_session/src/app_styles.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key,  required this.productModel,});
  final ProductModel productModel;


  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: AppColor.backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.productModel.discount > 0
                  ? DiscountCard(discount: widget.productModel.discount)
                  : SizedBox(),
              IconButton(
                onPressed: () {
                  widget.productModel.isFav = !widget.productModel.isFav;
                  setState(() {});
                },
                icon: Icon(
                  widget.productModel.isFav
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: widget.productModel.isFav ? Colors.red : Colors.black,
                  size: 12,
                ),
              ),
            ],
          ),
          Center(
            child: Image.network(
              height: 70,
              widget.productModel.imageUrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productModel.name,
                  style: AppTextStyles.font18BlackBold,
                ),
                Text(
                  widget.productModel.merchant,
                  style: AppTextStyles.font15GrayMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "£${widget.productModel.newPrice}",
                          style: AppTextStyles.font12GreenMedium,
                        ),
                        SizedBox(width: 10,),
                        widget.productModel.discount > 0 ?
                        Text(
                          "£${widget.productModel.price }",
                          style: AppTextStyles.font12BlackMediumInline,
                        ) : SizedBox.shrink(),
                      ],
                    ),

                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        decoration: ContainerDecorations.roundedCornerGreen,
                        padding: EdgeInsets.only(left: 10 , right: 10 ,top: 4, bottom: 4),
                        child: Text("+", style: AppTextStyles.font12WhiteMedium,),
                      ),
                    )

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
