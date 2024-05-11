import 'package:ecommerce_application/detail_screen.dart';
import 'package:ecommerce_application/product_model.dart';
import 'package:flutter/material.dart';

class SubMenu {
  final String? image;
  final String? text;

  SubMenu({this.image, this.text});
}

class HomeScreen extends StatefulWidget {
  HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  var list = [
    'https://tse4.mm.bing.net/th?id=OIP.mgap1fs9rd1GOuf4S4KQTwHaEE&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.1RfKeDjiffAd7MnXDykgcQHaFs&pid=Api&P=0&h=220',
    'https://tse2.mm.bing.net/th?id=OIP.EvGWibecfKitHUxzkMACDwHaFF&pid=Api&P=0&h=220',
    'https://tse3.mm.bing.net/th?id=OIP.sM3IcHiH73ERaPXSxqBKpAHaFI&pid=Api&P=0&h=220',
  ];
  List<Product> product = [
    Product(
        image:
            'https://imgs.search.brave.com/irPrTQmR8GM_KGCG4PFxDrvIeCSLJ9KUvq4dK8aZz6I/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9wbHVz/cG5nLmNvbS9pbWct/cG5nL3Nob2UtaGQt/cG5nLXNpbmdsZS1y/ZWQtcm9zZS1wbmct/cGljLTQyMC5wbmc',
        text: 'Shoe HD PNG - 96616',
        color: '5 Colors',
        price: '100'),
    Product(
        image:
            'https://imgs.search.brave.com/irPrTQmR8GM_KGCG4PFxDrvIeCSLJ9KUvq4dK8aZz6I/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9wbHVz/cG5nLmNvbS9pbWct/cG5nL3Nob2UtaGQt/cG5nLXNpbmdsZS1y/ZWQtcm9zZS1wbmct/cGljLTQyMC5wbmc',
        text: 'Shoe HD PNG - 25983',
        color: '6 Colors',
        price: '120'),
    Product(
        image:
            'https://imgs.search.brave.com/AQC6hzH7iE9KFdNov7A3b-EUyOryOgxXsLwvMzWb80M/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9mcmVl/cG5naW1nLmNvbS90/aHVtYi9jYXRlZ29y/aWVzLzE0OTgucG5n',
        text: 'Shoe HD PNG - 14578',
        color: '7 Colors',
        price: '110'),
    Product(
        image:
            'https://imgs.search.brave.com/Z6HHfudhKozzLIFdSLMT3bH6bBaXEVQH08tYvYYY7ds/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/cG5nYWxsLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvMjAxNi8w/My9TaG9lcy5wbmc',
        text: 'Shoe HD PNG - 57575',
        color: '8 Colors',
        price: '200'),
  ];

  List<SubMenu> listmenu = [
    SubMenu(
        image:
            'https://cdn-icons-png.freepik.com/256/7324/7324446.png?ga=GA1.1.1308421554.1702662982&semt=ais_hybrid',
        text: 'Categories'),
    SubMenu(
        image:
            'https://cdn-icons-png.freepik.com/256/7756/7756199.png?ga=GA1.1.1308421554.1702662982&semt=ais_hybrid',
        text: 'Compare'),
    SubMenu(
        image:
            'https://cdn-icons-png.freepik.com/256/4141/4141794.png?ga=GA1.1.1308421554.1702662982&semt=ais_hybrid',
        text: 'Sale event'),
    SubMenu(
        image:
            'https://cdn-icons-png.freepik.com/256/12680/12680357.png?ga=GA1.1.1308421554.1702662982&semt=ais_hybrid',
        text: 'Offer'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'SHOPIN',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Search...',
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200]),
              child: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              // decoration: const BoxDecoration(color: Colors.amberAccent),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                          color: Color(0x0fff894cff)),
                    ),
                  ),
                  Positioned(
                      left: 20,
                      bottom: 100,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.22,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Expanded(
                              child: PageView.builder(
                                  onPageChanged: (value) {
                                    setState(() {});
                                    currentIndex = value;
                                  },
                                  controller: PageController(
                                      initialPage: 0, viewportFraction: 0.6),
                                  itemCount: list.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Image.network(
                                            list[index],
                                            scale: 2,
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                            ),
                            Container(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                      list.length,
                                      (index) => Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: CircleAvatar(
                                              radius: 6,
                                              backgroundColor:
                                                  index == currentIndex
                                                      ? Colors.grey
                                                      : Colors.blueGrey
                                                          .withOpacity(0.3),
                                            ),
                                          ))),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    left: 30,
                    bottom: -45,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listmenu.length,
                          itemBuilder: (context, index) {
                            var lists = listmenu[index];
                            return Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  Container(
                                    // decoration: BoxDecoration(
                                    //     color: Colors.black87,
                                    //     borderRadius: BorderRadius.circular(10)),
                                    width: 60,
                                    height: 60,
                                    child: Image.network(lists.image!),
                                  ),
                                  Text(lists.text!)
                                ],
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'New Arrivals',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: const Color(0x0fff894cff),
                                borderRadius: BorderRadius.circular(10)),
                            width: 80,
                            height: 40,
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'View All',
                                  style: TextStyle(color: Colors.white),
                                )))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: product.length,
                          itemBuilder: (context, index) {
                            final item = product[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                            product: product[index])));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 15, top: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image:
                                                      NetworkImage(item.image!),
                                                  scale: 3),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.grey[100]),
                                          width: double.infinity,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.2,
                                          child: const Stack(children: [
                                            Positioned(
                                              top: 5,
                                              right: 8,
                                              child:
                                                  Icon(Icons.favorite_outline),
                                            )
                                          ]),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          child: Text(
                                            item.text!,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                                    .withOpacity(0.6)),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[100],
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          height: 30,
                                          width: 80,
                                          child: Text(
                                            item.color!,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                                    .withOpacity(0.3)),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '\$${item.price!}',
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 18),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                height: 35,
                                                width: 35,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                ),
                                                child: Icon(Icons.add),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
