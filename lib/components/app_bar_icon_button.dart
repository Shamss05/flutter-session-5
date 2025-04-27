import 'package:flutter/material.dart';

class AppBarIconButton extends StatelessWidget {
  AppBarIconButton({super.key, required this.color,required this.icon});
  var icon;
  Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){},
        icon: Icon(icon, color: color,),

    );
  }
}
