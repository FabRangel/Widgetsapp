import 'package:flutter/material.dart';

//Mapa como llave string y valor cualquier cosa
const cards = <Map<String, dynamic>>[
  {
    "title": "Titulo 1",
    "content":
        "Ipsum dolore mollit enim ad aliqua. Cupidatat quis nulla aute mollit velit ullamco officia proident nulla consectetur ipsum quis cupidatat.",
    "elevation": 0.0,
  },
  {
    "title": "Titulo 2",
    "content":
        "Ipsum dolore mollit enim ad aliqua. Cupidatat quis nulla aute mollit velit ullamco officia proident nulla consectetur ipsum quis cupidatat.",
    "elevation": 1.0,
  },
  {
    "title": "Titulo 3",
    "content":
        "Ipsum dolore mollit enim ad aliqua. Cupidatat quis nulla aute mollit velit ullamco officia proident nulla consectetur ipsum quis cupidatat.",
    "elevation": 2.0,
  },
];

const cards2 = <Map<String, dynamic>>[
  {
    "title": "Casa 1",
    "description":
        "Ipsum dolore mollit enim ad aliqua. Cupidatat quis nulla aute mollit velit ullamco officia proident nulla consectetur ipsum quis cupidatat.",
    "image":
        "https://cf.bstatic.com/xdata/images/hotel/max1024x768/554850619.jpg?k=834ef40e242d502a53aa4d2602682e5863aebf13757cadc4a68312d840ab73c9&o=&hp=1",
    "price": 2000000.0,
  },
  {
    "title": "Casa 2",
    "description":
        "Ipsum dolore mollit enim ad aliqua. Cupidatat quis nulla aute mollit velit ullamco officia proident nulla consectetur ipsum quis cupidatat.",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc4L9f7dGgum1weOo7IIJWfSkFEdv4WvfUaQ&s",
    "price": 4000000.0,
  },
  {
    "title": "Casa 3",
    "description":
        "Ipsum dolore mollit enim ad aliqua. Cupidatat quis nulla aute mollit velit ullamco officia proident nulla consectetur ipsum quis cupidatat.",
    "image": "https://tijuanotas.com/wp-content/uploads/2018/08/1-17.jpg",
    "price": 100000.5,
  },
];

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards Page')),
      body: const CardsView(),
    );
  }
}

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (c) =>
            //Text(c["title"])
            CardType1(
              title: c["title"],
              content: c["content"],
              elevation: c["elevation"],
            ),
          ),
          ...cards.map(
            (c) => CardType2(
              title: c["title"],
              content: c["content"],
              elevation: c["elevation"],
            ),
          ),
          ...cards.map(
            (c) => CardType3(
              title: c["title"],
              content: c["content"],
              elevation: c["elevation"],
            ),
          ),
          ...cards2.map(
            (c) => CardType4(
              title: c["title"],
              description: c["description"],
              price: c["price"],
              image: c["image"],
            ),
          ),
        ],
      ),
    );
  }
}

class CardType1 extends StatelessWidget {
  final String title;
  final String content;
  final double elevation;

  const CardType1({
    super.key,
    required this.title,
    required this.content,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class CardType2 extends StatelessWidget {
  final String title;
  final String content;
  final double elevation;

  const CardType2({
    super.key,
    required this.title,
    required this.content,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(content),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardType3 extends StatelessWidget {
  final String title;
  final String content;
  final double elevation;

  const CardType3({
    super.key,
    required this.title,
    required this.content,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            //'https://img.freepik.com/foto-gratis/delicioso-ramen-superficie-oscura_1150-41971.jpg?t=st=1741041465~exp=1741045065~hmac=3aa1f69eb0e721b5211738490bbf7892299612239df50a40cce22cf45ff46450&w=1380'),
            'https://img.freepik.com/foto-gratis/vista-frontal-hamburguesa-stand_141793-15542.jpg?t=st=1741042226~exp=1741045826~hmac=22944e550939c1844ef096efe3cd0303155628722b461b9564618ef10aa2d411&w=2000',
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              width: 50,
              height: 50,
              child: IconButton(
                tooltip: 'Más detalles',
                onPressed: () {},
                icon: Icon(Icons.agriculture),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardType4 extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final double price;

  const CardType4({
    super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 6.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: Colors.black54,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 230, 230, 231),
              const Color.fromARGB(159, 255, 255, 255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border.all(
            color: const Color.fromARGB(255, 86, 86, 88),
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(image, fit: BoxFit.cover),
            ),
            SizedBox(height: 8),
            Text(description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$ $price',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Ver',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Alquilar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
