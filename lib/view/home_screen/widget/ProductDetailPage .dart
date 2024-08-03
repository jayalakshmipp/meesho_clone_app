import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dumb_db.dart';
import 'package:meesho_clone_app/view/home_screen/widget/SingleProductDetails%20.dart';


class ProductDetailsPage extends StatelessWidget {
  final String categoryName;

  ProductDetailsPage({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    final products = DumpDB.getProductsByCategory(categoryName);

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: SingleChildScrollView( // Wrap GridView in SingleChildScrollView
        child: GridView.builder(
          shrinkWrap: true, // Allow GridView to take only necessary space
          physics: NeverScrollableScrollPhysics(), // Disable GridView's scrolling
          padding: EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingleProductDetailsPage(
                      product: product,
                    ),
                  ),
                );
              },
              child: Container(
                height: 250.0, // Adjusted height for better fit
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 180.0, 
                            width: double.infinity, 
                            child: Image.network(
                              product['imagePath'] ?? '',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 8.0,
                            right: 8.0,
                            child: LoveIcon(),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product['productName'] ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              product['price'] ?? '',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'Free Delivery',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        product['rating'] ?? '0',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 4.0),
                                      Icon(
                                        Icons.star,
                                        size: 14.0,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class LoveIcon extends StatefulWidget {
  @override
  _LoveIconState createState() => _LoveIconState();
}

class _LoveIconState extends State<LoveIcon> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleFavorite,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 16.0,
        child: Icon(
          _isFavorited ? Icons.favorite : Icons.favorite_border,
          color: _isFavorited ? Colors.red : Colors.grey,
          size: 16.0,
        ),
      ),
    );
  }
}