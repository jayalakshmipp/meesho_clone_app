import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/Category_screen/categories_screen.dart';
import 'package:meesho_clone_app/view/home_screen/home_screen.dart';
import 'package:meesho_clone_app/view/mall_screen/mall_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;

  List<Widget> myScreens = [
    HomeScreen(),
    CategoriesScreen(),
    MallScreen(),    // Mall Screen Placeholder
    Container(color: Colors.green),  // Liveshop Screen Placeholder
    Container(color: Colors.blue),   // My Orders Screen Placeholder
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.secondaryColor,
      body: myScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: MColors.primaryColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(color: MColors.primaryColor),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_sharp),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall_outlined),
            label: "Mall",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv_outlined),
            label: "Liveshop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "My Orders",
          ),
        ],
      ),
    );
  }
}
