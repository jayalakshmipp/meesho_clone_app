import 'package:flutter/material.dart';
import 'package:meesho_clone_app/view/home_screen/widget/ProductDetailPage%20.dart';

class RecentViewed extends StatelessWidget {
  final List<Map<String, String>> recentViewData;
  final String title;

  RecentViewed({required this.recentViewData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 180.0,
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
                    width: 140.0, 
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 120.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(item['imagePath'] ?? ''),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          item['categoryName'] ?? '',
                          style: TextStyle(
                            fontSize: 14.0,
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
          SizedBox(height: 15.0),
          Divider(
            color: Color(0xFFE4E3E3),
            height: 1.0,
            thickness: 4.0,
          ),
        ],
      ),
    );
  }
}
