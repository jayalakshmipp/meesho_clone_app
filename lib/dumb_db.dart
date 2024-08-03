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
  static List<Map<String, String>> categoryList = [
    {"imagePath": MImages.CATEGORIES_PNG, "categoryName": "Category"},
    {"imagePath": MImages.JEWELLERY_PNG, "categoryName": "Jewelery"},
    {"imagePath": MImages.KURTHI_PNG, "categoryName": "Kurthi"},
    {"imagePath": MImages.TOY_PNG, "categoryName": "Toys"},
    {"imagePath": MImages.BAGS_PNG, "categoryName": "Bags"},
    {"imagePath": MImages.DECOR_PNG, "categoryName": "Decor"},
    {"imagePath": MImages.Coins_PNG, "categoryName": "Rakhi"},
    {"imagePath": MImages.KIDS_PNG, "categoryName": "Kids"},
    {"imagePath": MImages.SAREE_PNG, "categoryName": "Sarees"},
    {"imagePath": MImages.BEAUTY_PNG, "categoryName": "Beauty"},
    {"imagePath": MImages.KITCHEN_PNG, "categoryName": "kitchen"},
    {"imagePath": MImages.FOOTWEAR_PNG, "categoryName": "FootWear"},
    {"imagePath": MImages.PURSE_PNG, "categoryName": "Purses"},
    {"imagePath": MImages.Coins_PNG, "categoryName": "Books"},
  ];

  static const List<String> BannerList = [
    "https://i.pinimg.com/236x/69/35/2e/69352e36b46fcffe5a033b0881460872.jpg",
    "https://i.pinimg.com/236x/bd/9c/25/bd9c251e48147d306e471ca14940f3d1.jpg",
    "https://i.pinimg.com/236x/0f/6a/07/0f6a071912847bdb1d60af32b5a89084.jpg",
    "https://i.pinimg.com/236x/e6/50/ec/e650ecfb0bf58bc1c4f5998618006213.jpg",
    "https://i.pinimg.com/236x/06/d8/91/06d891b1c9dfd785ee241340ea8703ff.jpg",
    "https://i.pinimg.com/236x/84/a7/9f/84a79f61ee8d0fd6d9da337dca07cd48.jpg",
    "https://i.pinimg.com/236x/cc/c0/ec/ccc0ec17f2efa897cf8aecb1be1c2df9.jpg",
    "https://i.pinimg.com/736x/54/f0/2b/54f02b307a40dd91c7d520c2e9b514b0.jpg",
    "https://i.pinimg.com/236x/b9/79/c5/b979c5c84dc4a82dc64171a0234aaba6.jpg",
    "https://i.pinimg.com/236x/b9/79/c5/b979c5c84dc4a82dc64171a0234aaba6.jpg",
    "https://i.pinimg.com/736x/55/31/c2/5531c2b1e55d43b223bd1b71113b8c1d.jpg",
    "https://i.pinimg.com/736x/69/40/1b/69401b040229d0e107f8e75221663fda.jpg",
    "https://i.pinimg.com/236x/8f/ce/3e/8fce3e6684d8251a23d2b0c1a055cd49.jpg",
    "https://i.pinimg.com/236x/f4/c3/dd/f4c3dd3ad516ff5be6605695e0e263aa.jpg",
    "https://i.pinimg.com/236x/69/35/2e/69352e36b46fcffe5a033b0881460872.jpg",
    "https://i.pinimg.com/236x/bd/9c/25/bd9c251e48147d306e471ca14940f3d1.jpg",
    "https://i.pinimg.com/236x/0f/6a/07/0f6a071912847bdb1d60af32b5a89084.jpg",
    "https://i.pinimg.com/236x/e6/50/ec/e650ecfb0bf58bc1c4f5998618006213.jpg",
    "https://i.pinimg.com/236x/06/d8/91/06d891b1c9dfd785ee241340ea8703ff.jpg",
    "https://i.pinimg.com/236x/84/a7/9f/84a79f61ee8d0fd6d9da337dca07cd48.jpg",
    "https://i.pinimg.com/236x/cc/c0/ec/ccc0ec17f2efa897cf8aecb1be1c2df9.jpg",
  ];

  static List<Map<String, String>> RecentView = [
    {
      "imagePath":
          "https://images.meesho.com/images/products/155284974/a8p6y_400.webp",
      "categoryName": "Dresses"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/products/306265365/plynl_400.webp",
      "categoryName": "Beauty"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/products/387635906/jfmt2_400.webp",
      "categoryName": "Night wear"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/products/428332855/gheuj_400.webp",
      "categoryName": "Hair accessories"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/products/286289165/u9cd8_400.webp",
      "categoryName": "Bags"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/marketing/1701835320853_400.webp",
      "categoryName": "Jewellery"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/marketing/1690977645848_200.webp",
      "categoryName": "Electronics"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/marketing/1690977994925_200.webp",
      "categoryName": "Health care"
    },
  ];

  static List<Map<String, String>> BestSelling = [
    {
      "imagePath":
          "https://images.meesho.com/images/products/291102846/evhbt_400.webp",
      "categoryName": "BestSelling"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/products/67755777/xvmx3_400.webp",
      "categoryName": "Bags"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/products/24588290/f301f_400.webp",
      "categoryName": "Laundry Bag"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/products/428910486/re8f0_400.webp",
      "categoryName": "Womens Bag"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/marketing/1701835320853_400.webp",
      "categoryName": "Bags"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/marketing/1701835320853_400.webp",
      "categoryName": "Jewellery"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/products/396233221/otzcw_400.webp",
      "categoryName": "Electronics"
    },
    {
      "imagePath":
          "https://images.meesho.com/images/marketing/1690977994925_200.webp",
      "categoryName": "Health care"
    },
  ];

  static List<Map<String, String>> getProductsByCategory(String categoryName) {
    final productsByCategory = {
      'Dresses': [
        {
          'imagePath':
              'https://images.meesho.com/images/products/306265365/plynl_400.webp',
          'productName': 'White Kurtha',
          'price': '200',
          'rating': '4.5',
        },
        {
          'imagePath':
              'https://images.meesho.com/images/products/306265365/plynl_400.webp',
          'productName': 'Dress 2',
          'price': '250',
          'rating': '4.0',
        },
        {
          'imagePath':
              'https://images.meesho.com/images/products/306265365/plynl_400.webp',
          'productName': 'Dress 2',
          'price': '250',
          'rating': '4.0',
        },
        // Add more products
      ],
      'Beauty': [
        {
          'imagePath':
              'https://images.meesho.com/images/products/387635906/jfmt2_400.webp',
          'productName': 'Beauty Product 1',
          'price': '150',
          'rating': '4.8',
        },
        {
          'imagePath':
              'https://images.meesho.com/images/products/428332855/gheuj_400.webp',
          'productName': 'Beauty Product 2',
          'price': '300',
          'rating': '4.2',
        },
        // Add more products
      ],
      'Night wear': [
        {
          'imagePath':
              'https://images.meesho.com/images/products/387635906/jfmt2_400.webp',
          'productName': 'Beauty Product 1',
          'price': '150',
          'rating': '4.8',
        },
        {
          'imagePath':
              'https://images.meesho.com/images/products/428332855/gheuj_400.webp',
          'productName': 'Beauty Product 2',
          'price': '300',
          'rating': '4.2',
        },
        // Add more products
      ],
      // Add more categories and products
    };

    return productsByCategory[categoryName] ?? [];
  }
}
