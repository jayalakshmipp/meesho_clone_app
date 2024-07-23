import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.backgroundColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(MImages.Dp_PNG),
              radius: 20, // This determines the size of the left-side image
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
                    color: Color.fromARGB(131, 173, 22, 138), 
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min, 
                    children: [
                      Image.asset(
                        MImages.MLogo_PNG,
                        width: 20, // Size of the left-side image
                        height: 20, 
                      ),
                      SizedBox(width: 8), 
                      Text(
                        '0 Coins', 
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white, 
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: Image.asset(
                  MImages.WishList_PNG, 
                  width: 18, 
                  height: 18, 
                ), 
                onPressed: () {
                  
                },
              ),
              SizedBox(width: 10), 
              IconButton(
                icon: Image.asset(
                  MImages.WishList_PNG, 
                  width: 18, 
                  height: 18, 
                ), 
                onPressed: () {
                  
                },
              ),
              SizedBox(width: 10), 
              IconButton(
                icon: Image.asset(
                  MImages.Cart_PNG, 
                  width: 18, 
                  height: 18, 
                ), 
                onPressed: () {
                 
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
