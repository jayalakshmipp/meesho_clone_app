import 'package:flutter/material.dart';
import 'package:meesho_clone_app/dumb_db.dart';
import 'package:meesho_clone_app/utils/constants/color_constants.dart';

class LocationPicker extends StatefulWidget {
  final Function(String, String, int) onSelect;
  final int? selectedIndex;

  const LocationPicker({
    required this.onSelect,
    this.selectedIndex,
  });

  @override
  _LocationPickerState createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  int? selectedLocationIndex;
  String enteredPincode = '';
  TextEditingController pincodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedLocationIndex = widget.selectedIndex;
  }

  @override
  void dispose() {
    pincodeController.dispose();
    super.dispose();
  }

  void _submitPincode() {
    setState(() {
      enteredPincode = pincodeController.text;
    });
    // Notify the parent widget of the new pincode
    widget.onSelect(
      _getLocationName(selectedLocationIndex ?? 0),
      enteredPincode,
      selectedLocationIndex ?? 0,
    );
  }

  String _getLocationName(int index) {
    final List<Map<String, String>> locations = DumpDB.getLocations();
    return locations[index]['place'] ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> locations = DumpDB.getLocations();

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Text(
              'Change Delivery Location',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Divider(color: Colors.grey, thickness: 1),
            SizedBox(height: 12),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: locations.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedLocationIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedLocationIndex = index;
                        enteredPincode = locations[index]['pincode']!;
                      });
                      widget.onSelect(
                        locations[index]['place']!,
                        enteredPincode,
                        index,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isSelected
                                ? MColors.secondaryColor
                                : Colors.transparent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(10)),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    locations[index]['name']!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(10)),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        locations[index]['address']!,
                                        style: TextStyle(fontSize: 14),
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        locations[index]['street']!,
                                        style: TextStyle(fontSize: 14),
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        locations[index]['place']!,
                                        style: TextStyle(fontSize: 14),
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        locations[index]['pincode']!,
                                        style: TextStyle(fontSize: 14),
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (isSelected)
                              Positioned(
                                top: 8,
                                right: 8,
                                child: CircleAvatar(
                                  backgroundColor: MColors.secondaryColor,
                                  radius: 10,
                                  child: Icon(
                                    Icons.check,
                                    size: 14,
                                    color: Colors.white,
                                  ),
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
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: MediaQuery.of(context).size.width - 330,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextField(
                            controller: pincodeController,
                            decoration: InputDecoration(
                              labelText: 'Type Delivery Pincode',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none,
                              alignLabelWithHint: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 12),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: MColors.secondaryColor),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: MColors.secondaryColor),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: _submitPincode,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MColors.secondaryColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                        child: Text('Submit'),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
