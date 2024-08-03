import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dumb_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  String selectedCategory = 'Category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'CATEGORIES',
          style: TextStyle(fontSize: 15, color: MColors.textBlack),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              MImages.WishList_PNG,
              width: 20,
              height: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              MImages.Cart_PNG,
              width: 20,
              height: 20,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: const Color.fromARGB(255, 226, 226, 226),
            thickness: 1.0,
          ),
        ),
      ),
      body: Row(
        children: [
          // Left side with scrollable images
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            color: Color.fromARGB(255, 239, 237, 237),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: DumpDB.categoryList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = DumpDB.categoryList[index]["categoryName"]!;
                    });
                  },
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 227, 225, 225),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              DumpDB.categoryList[index]["imagePath"]!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        DumpDB.categoryList[index]["categoryName"]!,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: MColors.textBlack,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Right side with text and scrollable grid of images
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selectedCategory,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MColors.textBlack,
                    ),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: DumpDB.getProductsEachCategory(selectedCategory).length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: Image.network(
                                DumpDB.getProductsEachCategory(selectedCategory)[index]["imagePath"]!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                       DumpDB.getProductsEachCategory(selectedCategory)[index]["productname"]!,
                      style: TextStyle(
                        fontSize: 16,
                        color: MColors.textBlack,
                      ))
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
