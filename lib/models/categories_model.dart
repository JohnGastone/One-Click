class Category1 {
  final String title;

  Category1({
    required this.title,
  });
}

class CategoryList {
  static List<Category1> categories = [
    Category1(
      title: "Lady's Shoes",
    ),
    Category1(
      title: "Classic Watches",
    ),
    Category1(
      title: "Laptop Bags",
    ),
    Category1(
      title: "Travel Bags",
    ),
    Category1(
      title: "Hand Bags",
    ),
    Category1(
      title: "Skonkinko",
    ),
    Category1(
      title: "Watches",
    ),
    Category1(
      title: "Snikers",
    )
  ];
  static List<Category1> displayCategories = List.from(categories);
}
