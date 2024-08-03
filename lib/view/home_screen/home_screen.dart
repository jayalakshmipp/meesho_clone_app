import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dumb_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/view/home_screen/widget/CategoryGridWidget.dart';
import 'package:meesho_clone_app/view/home_screen/widget/LocationWidget.dart';
import 'package:meesho_clone_app/view/home_screen/widget/appbaractions.dart';
import 'package:meesho_clone_app/view/home_screen/widget/appbartitle.dart';
import 'package:meesho_clone_app/view/home_screen/widget/recentViewed%20.dart';

import 'package:meesho_clone_app/view/home_screen/widget/searchField.dart';
import 'package:meesho_clone_app/view/home_screen/widget/BannerWidget.dart';
 // Import the detail page

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.backgroundColor,
      appBar: AppBar(
        title: AppBarTitle(),
        actions: [AppBarActions()],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: SearchTextField(),
              ),
              SizedBox(height: 16),
              LocationWidget(),
              SizedBox(height: 16),
              CategoryGridWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: BannerWidget(),
              ),
              RecentViewed(
                recentViewData: DumpDB.RecentView,
                title: "Recently Viewed",
              ),
              RecentViewed(
                recentViewData: DumpDB.BestSelling,
                title: "Best Selling",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
