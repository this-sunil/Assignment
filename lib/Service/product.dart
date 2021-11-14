class Product {
  String name;
  String image;
  String price;
  Product({this.name, this.image, this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      image: json['image'],
      price: json['price'],
    );
  }
}

List<Product> mobile() {
  return <Product>[
    Product(
      name: 'Samsung Galaxy A80',
      image: 'images/mobile/samsung galaxy A80.jpg',
      price: '40000',
    ),
    Product(
      name: 'Samsung Galaxy A83',
      image: 'images/mobile/samsung galaxy A83.jpg',
      price: '20000',
    ),
    Product(
      name: 'Samsung Galaxy J2',
      image: 'images/mobile/samsung galaxy j2.jpg',
      price: '10000',
    ),
    Product(
      name: 'Samsung Galaxy J7',
      image: 'images/mobile/samsung galaxy j7.jpg',
      price: '18000',
    ),
    Product(
      name: 'Samsung Galaxy M11',
      image: 'images/mobile/samsung galaxy m11.jpg',
      price: '12000',
    ),
    Product(
      name: 'Samsung Galaxy M60',
      image: 'images/mobile/samsung galaxy m60.jpg',
      price: '30000',
    ),
    Product(
      name: 'Samsung Galaxy Note',
      image: 'images/mobile/samsung galaxy note.jpg',
      price: '40000',
    ),
    Product(
      name: 'Samsung Galaxy s21',
      image: 'images/mobile/samsung galaxy s21.jpg',
      price: '20000',
    ),
    Product(
      name: 'Samsung Galaxy s6',
      image: 'images/mobile/samsung galaxy s6.jpg',
      price: '40000',
    ),
    Product(
      name: 'Samsung Galaxy',
      image: 'images/mobile/samsung.jpg',
      price: '40000',
    ),
  ];
}

List<Product> laptop() {
  return <Product>[
    Product(
      name: 'Dell inspiron',
      image: 'images/laptop/Dell inspiron.jpg',
      price: '40000',
    ),
    Product(
      name: 'Dell Inspiron 15',
      image: 'images/laptop/Dell-Inspiron-15.jpg',
      price: '30000',
    ),
    Product(
      name: 'Dell inspiron',
      image: 'images/laptop/dell-new-inspiron-15.jpg',
      price: '50000',
    ),
    Product(
      name: 'Hp Laptop',
      image: 'images/laptop/Hp Laptop.png',
      price: '40000',
    ),
    Product(
      name: 'Hp Pavilion X360',
      image: 'images/laptop/Hp Pavilion X360.jpg',
      price: '20000',
    ),
    Product(
      name: 'HP Pavilion',
      image: 'images/laptop/Hp Pavilion-15.jpg',
      price: '50000',
    ),
    Product(
      name: 'Lenovo Ideapad',
      image: 'images/laptop/Lenovo-Ideapad-S340-14.jpg',
      price: '40000',
    ),
    Product(
      name: 'Samsung Galaxy Pro',
      image: 'images/laptop/Samsung Galaxy Pro.jpg',
      price: '80000',
    ),
    Product(
      name: 'Samsung R530',
      image: 'images/laptop/Samsung R530.jpg',
      price: '70000',
    ),
    Product(
      name: 'Samsung Series',
      image: 'images/laptop/Samsung Series.jpg',
      price: '10000',
    ),
  ];
}
