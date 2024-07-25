import 'package:meesho_clone_app/utils/constants/image_constants.dart'; // Ensure this path is correct

class DumpDB {
  // Returns a list of locations
  static List<Map<String, String>> getLocations() {
    return [
      {
        'name': 'Jayalakshmi',
        'address': '123 Main St,',
        'street': 'Main St',
        'pincode': '123456',
        'place': 'City Center'
      },
      {
        'name': 'Sreekutty',
        'address': '456 Maple Ave, Town',
        'street': 'Maple Ave',
        'pincode': '654321',
        'place': 'Uptown'
      },
      {
        'name': 'Sreelakshmi',
        'address': '789 Oak Dr, Village',
        'street': 'Oak Dr',
        'pincode': '789123',
        'place': 'Downtown'
      },
    ];
  }

  // List of category Details on HomePage
  static List<Map<String, String>>  categoryList = [
    {"imagePath": MImages.Cart_PNG,"categoryName":"Category"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Rakhi"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Kurthi"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Kids"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Western"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Jewelery"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Books"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Sarees"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Beauty"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"kitchen"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"FootWear"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Cars"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Toys"},
    {"imagePath": MImages.Coins_PNG,"categoryName":"Bags"},
  ];
}
