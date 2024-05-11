class Product {
  final String? image;
  final String? text;
  final String? price;
  final String? color;

  Product({this.image, this.text, this.price, this.color});
}

class PageViewbanner {
  final String? image;

  PageViewbanner({this.image});

  static List<PageViewbanner> banner = [
    PageViewbanner(
      image:
          'https://tse4.mm.bing.net/th?id=OIP.mgap1fs9rd1GOuf4S4KQTwHaEE&pid=Api&P=0&h=220',
    ),
    PageViewbanner(
      image:
          'https://tse3.mm.bing.net/th?id=OIP.1RfKeDjiffAd7MnXDykgcQHaFs&pid=Api&P=0&h=220',
    ),
    PageViewbanner(
      image:
          'https://tse2.mm.bing.net/th?id=OIP.EvGWibecfKitHUxzkMACDwHaFF&pid=Api&P=0&h=220',
    ),
    PageViewbanner(
      image:
          'https://tse3.mm.bing.net/th?id=OIP.sM3IcHiH73ERaPXSxqBKpAHaFI&pid=Api&P=0&h=220',
    ),
  ];
}
