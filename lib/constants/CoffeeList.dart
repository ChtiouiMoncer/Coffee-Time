class CoffeeList {
  String name;
  int id;
  double price;
  String image;
  int quantity;

  CoffeeList.coffee(
      {this.id, this.name, this.image, this.price, this.quantity});
}

List<CoffeeList> allCoffee = [
  CoffeeList.coffee(
      quantity: 1,
      id: 1,
      name: 'Tea',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Assam-Tea_2.png',
      price: 2.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 2,
      name: 'Creme Coffee',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Aztec-Ethiopian-Coffee_0.png',
      price: 8.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 3,
      name: ' Mango Milkshake',
      image: 'https://www.cafecoffeeday.com/sites/default/files/mango.jpg',
      price: 14.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 4,
      name: 'Tea Pomegranate',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/7_500x378_pomegranate_0.jpg',
      price: 12.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 5,
      name: 'Café Americano',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Cafe-Americano-2_0.png',
      price: 2.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 6,
      name: 'Café Capucin',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Cafe-frappe_2.png',
      price: 3.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 7,
      name: 'Café Latte',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Cafe-Latte-01_0.png',
      price: 8.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 8,
      name: 'Café Milk',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Cafe-Mocha_0.png',
      price: 2.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 9,
      name: 'Classic Cappuccino',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Cappuccino_8.png',
      price: 13.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 10,
      name: 'Classic Lemonade',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Classic-Lemonade_2.png',
      price: 13.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 11,
      name: 'Strawberry Milkshake',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/500x378-strawberry_0.jpg',
      price: 10.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 12,
      name: 'Cocoa Cookie Milkshake',
      image: 'https://www.cafecoffeeday.com/sites/default/files/chocolate.jpg',
      price: 10.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 13,
      name: 'Cold Cocoa Latte',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Cold-Cocoa-Latte_2.png',
      price: 15.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 14,
      name: 'Cool Blue',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Cool-blue_2.png',
      price: 10.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 15,
      name: 'Crunchy Frappe',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Crunchy-Frappe_2.png',
      price: 22.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 16,
      name: 'Darjeeling Tea',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Darjeeling-Tea_2.png',
      price: 7.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 17,
      name: 'Dark Frappe',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Dark-Frappe_2.png',
      price: 18.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 18,
      name: 'Devil\'s Own',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Devils-Own_2.png',
      price: 26.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 19,
      name: 'Enliven With Chamomile',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/5_500x378_chamomile_0.jpg',
      price: 10.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 20,
      name: 'Ethiopian single origin Coffee',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Aztec-Ethiopian-Coffee_2.png',
      price: 13.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 21,
      name: 'Nespresso',
      image: 'https://www.cafecoffeeday.com/sites/default/files/Espresso_2.png',
      price: 12.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 22,
      name: 'Filter Coffee',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Filter-Coffee_1.png',
      price: 1.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 23,
      name: 'Glide With Green Mint',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/4_500x378_green-mint_1.jpg',
      price: 10.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 24,
      name: 'Green Tea',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Green-Tea_2.png',
      price: 5.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 25,
      name: 'Aztec single origin Coffee',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Aztec-Ethiopian-Coffee_0.png',
      price: 8.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 26,
      name: 'Aztec single origin Coffee',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Aztec-Ethiopian-Coffee_0.png',
      price: 8.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 27,
      name: 'Hot Gourmet Cocoa',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Hot-gourmet-cocoa_2.png',
      price: 13.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 28,
      name: 'Inverted Cappuccino',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Inverted-Cappuccino_1.png',
      price: 20.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 29,
      name: 'Kaapi Nirvana',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Kaapi-Nirvana_2.png',
      price: 18.00),
  CoffeeList.coffee(
      quantity: 1,
      id: 30,
      name: 'Vegan Shake',
      image:
          'https://www.cafecoffeeday.com/sites/default/files/Vegan-Shake_2.png',
      price: 16.00),
];
