class Item {
  final String title;
  final String description;
  final String price;
  final String discount;

  Item({
    required this.title,
    required this.description,
    required this.price,
    required this.discount,
  });
}

class ItemList {
  static List<Item> items = [
    Item(
        title: "Gucci Shoe",
        description: "A shoe worn by Bibi Titi Mohamed",
        price: 'Tsh 67,000',
        discount: "10"),
    Item(
        title: "Gucci Shoe",
        description: "A shoe worn by Bibi Titi Mohamed",
        price: 'Tsh 60,000',
        discount: "10"),
    Item(
        title: "Vuitton Watch",
        description: "A classy watch to fit your worth",
        price: '45',
        discount: "10"),
    Item(
        title: "Laptop bag",
        description: "Portable bag for your Laptop",
        price: '50',
        discount: "10"),
    Item(
        title: "Safari bag",
        description: "We got you covered with this travel bag",
        price: '67',
        discount: "10"),
    Item(
        title: "Hand bag",
        description: "Classic girls gather here for this one",
        price: '70',
        discount: "10"),
    Item(
        title: "Skonkinko",
        description: "A shoe worn by Mama Kilakshal",
        price: '80',
        discount: "10"),
    Item(
        title: "Lexus watch",
        description: "Watch your watch as special as it is",
        price: '67',
        discount: "10"),
    Item(
        title: "Anything else",
        description: "These are just few of many things",
        price: '67',
        discount: "10"),
    Item(
        title: "Gucci Shoe",
        description: "A shoe worn by Bibi Titi Mohamed",
        price: '56',
        discount: "10"),
  ];
  static List<Item> displayList = List.from(items);
}
