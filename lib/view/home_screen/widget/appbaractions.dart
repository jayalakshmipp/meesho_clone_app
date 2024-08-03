import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';

class AppBarActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Image.asset(
            MImages.WishList_PNG,
            width: 18,
            height: 18,
          ),
          onPressed: () {},
        ),
        
        SizedBox(width: 10),
        IconButton(
          icon: Image.asset(
            MImages.Cart_PNG,
            width: 18,
            height: 18,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
