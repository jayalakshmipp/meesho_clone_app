// import 'package:flutter/material.dart';

// class CategoryItemWidget extends StatelessWidget {
//   final String imagePath;
//   final String categoryName;
//   final VoidCallback onTap;

//   const CategoryItemWidget({
//     required this.imagePath,
//     required this.categoryName,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 55, // Adjust the width to fit more items horizontally
//         margin: EdgeInsets.all(7.0),
//         child: Column(
//           children: [
//             Container(
//               height: 55, // Adjust the height as needed
//               decoration: BoxDecoration(
//                 color: Colors.white, // Background color smaller than image
//                 borderRadius: BorderRadius.vertical(
//                   top: Radius.circular(8.0),
//                   bottom: Radius.circular(40.0), // Semi-circular bottom
//                 ),
//               ),
//               child: Center(
//                 child: Container(
//                   height: 60, // Image height
//                   child: Image.asset(
//                     imagePath,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.white,
//               padding: const EdgeInsets.all(4.0),
//               child: Text(
//                 categoryName,
//                 style: TextStyle(
//                   fontSize: 10.0, // Adjust font size as needed
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
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
        width: 55, // Adjust the width to fit more items horizontally
        margin: EdgeInsets.all(4.0),
        child: Column(
          children: [
            Container(
              height: 45, // Adjust the height as needed
              width: 45, // Make the background width smaller than image
              decoration: BoxDecoration(
                color: Color(0xFFB9E3FF), // Light blue background color
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40.0), // Semi-circular top
                  bottom: Radius.circular(16.0), // Semi-rounded bottom
                ),
              ),
              child: Center(
                child: Container(
                  height: 55, // Image height
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

