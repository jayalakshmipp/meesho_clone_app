import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/dumb_db.dart';

class BannerWidget extends StatefulWidget {
  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _autoScroll();
  }

  void _autoScroll() {
    Future.delayed(Duration(seconds: 3), () {
      if (_pageController.hasClients) {
        int nextPage = (_currentPage + 1) % DumpDB.BannerList.length;
        _pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
        setState(() {
          _currentPage = nextPage;
        });
        _autoScroll();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: DumpDB.BannerList.map((imageUrl) {
              return Image.network(imageUrl.trim(), fit: BoxFit.cover);
            }).toList(),
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(DumpDB.BannerList.length, (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              width: _currentPage == index ? 10.0 : 8.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: _currentPage == index ? MColors.secondaryColor : Color(0xFFE4E3E3),
                borderRadius: BorderRadius.circular(3.0), 
              ),
            );
          }),
        ),
        SizedBox(height: 15), 
        Divider(
          color: Color(0xFFE4E3E3), 
          height: 1.0, 
          thickness: 4.0, 
        ),
      ],
    );
  }
}
