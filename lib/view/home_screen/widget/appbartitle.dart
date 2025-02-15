import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(MImages.Dp_PNG),
          radius: 20,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jayalakshmi',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: MColors.coinBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    MImages.MLogo_PNG,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '0 Coins',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: MColors.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
