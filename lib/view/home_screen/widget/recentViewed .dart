import 'package:flutter/material.dart';
import 'package:meesho_clone_app/view/home_screen/widget/ProductDetailPage%20.dart';

class RecentViewed extends StatelessWidget {
  final List<Map<String, String>> recentViewData;
  final String title;

  RecentViewed({required this.recentViewData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentViewData.length,
              itemBuilder: (context, index) {
                final item = recentViewData[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsPage(
                          categoryName: item['categoryName'] ?? '',
                        ),
                      ),
                    );
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
