class Category1 {
  final String title;

  Category1({
    required this.title,
  });
}

class CategoryList {
  static List<Category1> categories = [
    Category1(
      title: "Gucci Shoe",
    ),
    Category1(
      title: "Gucci Shoe",
    ),
    Category1(
      title: "Gucci Shoe",
    ),
    Category1(
      title: "Gucci Shoe",
    ),
    Category1(
      title: "Gucci Shoe",
    ),
    Category1(
      title: "Gucci Shoe",
    ),
    Category1(
      title: "Gucci Shoe",
    ),
    Category1(
      title: "Gucci Shoe",
    )
  ];
  static List<Category1> displayCategories = List.from(categories);
}
