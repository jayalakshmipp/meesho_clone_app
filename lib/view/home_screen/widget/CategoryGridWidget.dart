import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dumb_db.dart';
import 'package:meesho_clone_app/view/home_screen/widget/CategoryDetailPage.dart';
import 'package:meesho_clone_app/view/home_screen/widget/CategoryItemWidget.dart';

class CategoryGridWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories = DumpDB.categoryList;
    final halfLength = (categories.length / 2).ceil();

    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: [
                for (int i = 0; i < halfLength; i++)
                  CategoryItemWidget(
                    imagePath: categories[i]['imagePath']!,
                    categoryName: categories[i]['categoryName']!,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailPage(
                            categoryName: categories[i]['categoryName']!,
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ),
            Row(
              children: [
                for (int i = halfLength; i < categories.length; i++)
                  CategoryItemWidget(
                    imagePath: categories[i]['imagePath']!,
                    categoryName: categories[i]['categoryName']!,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetailPage(
                            categoryName: categories[i]['categoryName']!,
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
