import 'package:flutter/material.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';
import 'package:meesho_clone_app/utils/constants/image_constants.dart';
import 'package:meesho_clone_app/view/home_screen/widget/LocationPicker.dart';

class LocationWidget extends StatefulWidget {
  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  String selectedLocation = 'Your Location';
  String selectedPincode = '';
  int? selectedIndex;

  void _showLocationPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
      ),
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: LocationPicker(
            selectedIndex: selectedIndex,
            onSelect: (place, pincode, index) {
              setState(() {
                selectedLocation = place;
                selectedPincode = pincode;
                selectedIndex = index;
              });
              Navigator.pop(context);
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showLocationPicker(context),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        color: Color.fromARGB(184, 238, 236, 236),
        child: Row(
          children: [
            Image.asset(
              MImages.Location_PNG,
              width: 24,
              height: 24,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Row(
                children: [
                  Text(
                    'Delivering to $selectedLocation - ',
                    style: TextStyle(
                      color: MColors.textBlack,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '$selectedPincode',
                    style: TextStyle(
                      color: MColors.textBlack,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: MColors.textBlack,
                    size: 13,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
