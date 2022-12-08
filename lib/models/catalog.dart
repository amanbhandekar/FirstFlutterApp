class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

final products = [
  Item(
      id: "01",
      name: "iPhone 14 Pro",
      desc: "Apple iPhone 14th Gen",
      price: 121000,
      color: "#33505a",
      image:
          "https://www.pexels.com/photo/a-close-up-shot-of-a-person-holding-an-iphone-10914594/"),
];
