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
        price: 'Tsh 150,000',
        discount: "10"),
    Item(
        title: "Laptop bag",
        description: "Portable bag for your Laptop",
        price: 'Tsh 50,000',
        discount: "10"),
    Item(
        title: "Safari bag",
        description: "We got you covered with this travel bag",
        price: 'Tsh 67,000',
        discount: "10"),
    Item(
        title: "Hand bag",
        description: "Classic girls gather here for this one",
        price: 'Tsh 70,000',
        discount: "10"),
    Item(
        title: "Skonkinko",
        description: "A shoe worn by Mama Kilakshal",
        price: 'Tsh 80,000',
        discount: "10"),
    Item(
        title: "Lexus watch",
        description: "Watch your watch as special as it is",
        price: 'Tsh 67,000',
        discount: "10"),
    Item(
        title: "Gucci Shoe",
        description: "A shoe worn by Mama Kizim'job",
        price: 'Tsh 56,000',
        discount: "10"),
    Item(
        title: "Gucci Shoe",
        description: "A shoe worn by Bibi Titi Mohamed",
        price: 'Tsh 56,000',
        discount: "10"),
    Item(
        title: "Anything else",
        description: "These are just few of many things",
        price: 'Tsh 67,000',
        discount: "10"),
  ];
  static List<Item> displayList = List.from(items);
}
