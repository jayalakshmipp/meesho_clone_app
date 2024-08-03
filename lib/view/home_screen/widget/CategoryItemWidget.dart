import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final String imagePath;
  final String categoryName;
  final VoidCallback onTap;

  const CategoryItemWidget({
    required this.imagePath,
    required this.categoryName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 55,
        margin: EdgeInsets.all(4.0),
        child: Column(
          children: [
            Container(
              height: 45,
              width: 45, 
              decoration: BoxDecoration(
                color: Color(0xFFB9E3FF), 
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40.0), 
                  bottom: Radius.circular(16.0), 
                ),
              ),
              child: Center(
                child: Container(
                  height: 55, 
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(4.0),
              child: Text(
                categoryName,
                style: TextStyle(
                  fontSize: 10.0, // Adjust font size as needed
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

