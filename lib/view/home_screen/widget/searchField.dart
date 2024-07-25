import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        prefixIcon: const Icon(Icons.search, color: MColors.grey),
        suffixIcon: const Icon(Icons.mic, color: MColors.grey),
        hintText: "Search by Keyword or Product ID",
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12, 
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color:  MColors.grey, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color:  MColors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color:  MColors.grey, width: 1),
        ),
      ),
    );
  }
}
