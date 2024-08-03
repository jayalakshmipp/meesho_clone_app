import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'package:meesho_clone_app/view/home_screen/widget/LocationWidget.dart';

class MallScreen extends StatelessWidget {
  final List<Map<String, String>> mallImages = [
    {'imagePath': 'path_to_image_1', 'categoryName': 'Category 1'},
    {'imagePath': 'path_to_image_2', 'categoryName': 'Category 2'},
    {'imagePath': 'path_to_image_3', 'categoryName': 'Category 3'},
    // Add more image paths and category names here
  ];

  MallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'MEESHO MALL',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 8),
                Image.asset(
                  MImages.WishList_PNG,
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 8),
                Image.asset(
                  MImages.Cart_PNG,
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Color.fromARGB(255, 226, 226, 226),
            thickness: 1.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LocationWidget(),
          SizedBox(height: 10),
          Container(
            height: 180,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mallImages.length,
              itemBuilder: (context, index) {
                final item = mallImages[index];
                return GestureDetector(
                  onTap: () {
                    // Handle tap event
                  },
                  child: Container(
                    width: 140,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(item['imagePath'] ?? ''),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          item['categoryName'] ?? '',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Divider(
            color: Color(0xFFE4E3E3),
            height: 1,
            thickness: 4,
          ),
        ],
      ),
    );
  }
}
